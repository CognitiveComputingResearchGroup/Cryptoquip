#! /usr/bin/python2.7
import random
import re
import string
from cq_classes import Puzzle

"""
    cq_utilities.py
    TODO
"""

def load_puzzle(filename):
    """ load_puzzle(filename)
        Return a Puzzle object initialized with data from a file.
        The file should be formatted with the puzzle in all caps,
        and a clue of the form '# X = g' on the last line, preceded
        by a blank line.
    """
    with open(filename) as infile:
        lines = infile.readlines()

    puzzle_text = ' '.join([line.strip() for line in lines[:-1]])
    clue = re.search(re.compile(r'.*([A-Z]).*([a-z])'), lines[-1]).groups()
    puzzle = Puzzle(puzzle_text)
    if clue:
        puzzle.set(*clue)
    return puzzle

def get_random_code():
    code = list(string.uppercase)
    actual = list(string.lowercase)
    shuffle = True
    while shuffle:
        random.shuffle(actual)
        if any([c1.lower() == c2 
            for (c1, c2) in zip(code, actual)]):
            continue
        else:
            shuffle = False
    return code, actual

def generate_puzzle(text):
    """ Given a text, randomly generate a dictionary 
        to encode the text. Return a Puzzle in the solved
        state.
    """
    code, actual = get_random_code()
    code = ''.join(code)
    actual = ''.join(actual)
    trtab = string.maketrans(actual, code)
    puzz = text.lower().translate(trtab)
    puzzle = Puzzle(puzz)
    puzzle.set(code, actual)
    return puzzle


### +===============================================+
### | Legacy utilities: may be useful in the future |
### +===============================================+
def load_ref(filename):
    """ load_ref(filename)
        Returns the text to be used as a reference dictionary.
    """
    with open(filename) as infile:
        ref_text = infile.read()
        return ref_text

def print_sorted(toks, freqs, n=10):
    """ print_sorted(toks, freqs, n=10)
        Display table of n highest frequency
        tokens. toks and freqs are lists with
        row to row correspondence.
    """
    # HISTORY: dictionary built-ins were tried first, but
    # not convenient for sorting on VALUE rather than key.
    # Parallel lists allow the simple zip-lambda 
    # work-around below.

    sorts = sorted(zip(toks, freqs), key=lambda x: x[1], reverse=True)
    toks = [sort[0] for sort in sorts]
    freqs = [sort[1] for sort in sorts]
    print(('{:^6}'*n).format(*toks))
    print(('{:^6.1f}'*n).format(*freqs))

def get_sorted(toks, freqs, n=10):
    """ get_sorted(toks, freqs, n=10)
        Same as print_sorted but returns
        rather than displays lists of 
        length n, sorted by freqs value.
        toks and freqs are lists with
        row to row correspondence.
    """
    #HISTORY: See print_sorted above.
    sorts = sorted(zip(toks, freqs), key=lambda x: x[1], reverse=True)
    toks = [sort[0] for sort in sorts]
    freqs = [sort[1] for sort in sorts]
    return toks, freqs

def get_keys(length=1):
    """ get_keys(length=1) 
        Returns a list of Ngram keys of length length
        (except for length=1, returns a string).
        RECURSIVE.
    """
    if length == 1:
        return 'abcdefghijklmnopqrstuvwxyz'
    else:
        return [ k1 + k2 for k1 in get_keys() 
                for k2 in get_keys(length - 1) ]

def get_counts(tokens, doc):
    """ get_counts(tokens, doc)
        Expects a list of Ngram keys (tokens) and 
        a sequence of tokens (doc) to count.  
    """
    #HISTORY:   This function seems to be the performance
    #           bottleneck for very large lists. 
              
    token_counts = [ doc.count(token) for token in tokens ]
    return token_counts

def get_freqs(tokens, doc):
    """ get_freqs(tokens, doc)
        Calculate frequencies of tokens (a list of ngram keys)
        in doc (string, list, or other object with .count() method). 
        Calls get_counts().
    """
    token_counts = get_counts(tokens, doc)
    total = sum(token_counts)
    total = 1 if not total else total
    token_freqs = [ float(c) * 100/total for c in token_counts ]
    return token_freqs


def get_char_freqs(text):
    """ get_char_freqs(text)
        Return single character frequencies for text.
    """
    keys = get_keys()
    chars = [c for c in text.lower() if c in keys]
    freqs = get_freqs(keys, chars)
    return keys, freqs

def get_word_start_freqs(text):
    """ get_word_start_freqs(text)
        Return word start frequencies for characters in text.
    """
    keys = get_keys()
    no_punc = [ c if c in keys else ' ' for c in text.lower() ]
    # All punctuation is replaced with space to preserve wording.
    # TODO: no_punc is generated in several utility functions,
    # which is not very DRY. Consider alternatives.
    words = [ w for w in ''.join(no_punc).split() if len(w) > 1 ]
    word_starts = [word[0] for word in words]
    ws_freqs = get_freqs(keys, word_starts)
    return keys, ws_freqs

def get_word_end_freqs(text):
    """ get_word_end_freqs(text)
        Return word end frequencies for characters in text.
    """
    keys = get_keys()
    no_punc = [ c if c in keys else ' ' for c in text.lower() ]
    words = [ w for w in ''.join(no_punc).split() if len(w) > 1 ]
    word_ends = [word[-1] for word in words]
    we_freqs = get_freqs(keys, word_ends)
    return keys, we_freqs


def get_word_internal_freqs(text):
    """ get_word_internal_freqs(text)
        Return internal word frequencies (neither at the start
        nor at the end of words) for characters in text.
    """
    keys = get_keys()
    no_punc = [ c if c in keys else ' ' for c in text.lower() ]
    words = [ w for w in ''.join(no_punc).split() if len(w) > 2 ]
    # Count one and two-letter words as having zero internal
    # characters; above len condition removes them.
    word_ins = ''.join([word[1:-1] for word in ''.join(no_punc).split()])
    wi_freqs = get_freqs(keys, word_ins)
    return keys, wi_freqs

def get_bg_freqs(text):
    """ get_bg_freqs(text)
        Return bigram frequencies for characters in text.
    """
    no_punc = [ c if c in get_keys() else ' ' for c in text.lower() ]
    words = ''.join(no_punc).split()
    doc = ' '.join(words)

    bg_keys = get_keys(2)
    # TODO: write function that generalizes get_bg_freqs,
    #       get_tg_freqs, etc. to get_Ngram_freqs(text, N).
    bg_freqs = get_freqs(bg_keys, doc)
    return bg_keys, bg_freqs

def get_tg_freqs(text):
    """ get_tg_freqs(text)
        Return trigram frequencies for characters in text.
    """
    keys = get_keys()
    no_punc = [ c if c in keys else ' ' for c in text.lower() ]
    words = ''.join(no_punc).split()
    doc = ' '.join(words)

    tg_keys = get_keys(3)
    tg_freqs = get_freqs(tg_keys, doc)
    return tg_keys, tg_freqs


def get_quad_freqs(text):
    """ get_quad_freqs(text)
        Return quadrigram frequencies for characters in text.
    """
    keys = get_keys()
    no_punc = [ c if c in keys else ' ' for c in text.lower() ]
    words = ''.join(no_punc).split()
    doc = ' '.join(words)

    quad_keys = get_keys(4)
    quad_freqs = get_freqs(quad_keys, doc)
    return quad_keys, quad_freqs

def get_dblltr_freqs(text):
    """ get_dblltr_freqs(text)
        Return double letter frequencies for characters in text.
    """
    ltrs = get_keys()
    dblltrs = [ l * 2 for l in ltrs ]
    no_punc = [ c if c in ltrs else ' ' for c in text.lower() ]
    words = ''.join(no_punc).split()
    doc = ' '.join(words)
    dblltr_freqs = get_freqs(dblltrs, doc)
    return dblltrs, dblltr_freqs


