#! /usr/bin/python2.7
import string, re, random
from collections import Counter

"""
    cq_v4.py 
    The cryptoquip module is under development with a view towards
    1) an eventual collection of SBCs to model puzzle solving 
       activity over multiple cognitive cycles;
    2) an eventual code library for analyzing medical
       record text and finding tokens with good clinical
       semantic informativity.

    Beginning with v4, will port code into ipython notebook document
    that will serve as a narrative & tutorial for the introspective
    thought building (ITB) process. Here is a brief overview:
    1. Select a puzzle-solving context (eg Cryptoquip, diagnosis, etc.)
    2. Cycle specification. 
        Specify a simple action-perception cycle. Eg, for a cryptoquip
        puzzle (see notebook document for figures)
        a. Select puzzle, evaluate clue. This initializes the state
            of the puzzle, and the state of a translation table.
        b. Select a simple action that will change the translation
            table. For instance, "Let's try A = c" will cause
            all As in the puzzle to be translated into c.
        c. Propagate the selected action to the puzzle. This changes
            the state of the puzzle.
        d. Evaluate the change. If satisfied, repeat the cycle.
            If not, undo the change and then repeat.
        e. Continue until all the letters in the puzzle have been 
            translated.
    3. Analyze the specified cycle in terms of the LIDA Model. 
        For instance, in the above cryptoquip example,
        The puzzle itself is written on a piece of paper in an environment. 
        The environment also contains more paper, something to write 
        with, and written versions of the translation table and
        the current state of the puzzle. For now, we will refer to all
        of this simply as "the puzzle," but later, we can use 
        "the puzzle environment" to disambiguate when necessary.

        The current situational model contains a representation of 
        each of these constituents of the puzzle.  

        During each cycle, an agent senses the puzzle, cogitates, 
        and selects an action that changes the state of the puzzle.
        This fulfills the LIDA requirements: 1) The question "What
        do I do next?" is answered and an action is selected;
        2) This action affects what the agent will sense during
        the next cycle; 3) its agenda is to solve the puzzle.

    4.  Apply a "think aloud" procedure to generate hypotheses
        about how these steps could be accomplished computationally.
        There are two types of hypotheses:
        a. Psychological -- these try to answer the question of
            how a chosen biological model (eg human mind) accomplishes
            these steps in the cycle;
        b. Technological -- these try to solve the question of 
            finding the best, or at least a workable way to
            accomplish the steps according to certain design
            constraints.
        This distinction is important, because ITB can be used to
        flesh out the LIDA Model, and also to design specific agents.
        MAX will work along both of these lines, but at times it will 
        work on both at the same time, and other times it will work 
        on one and not the other.



    TODO: 
        o Add feature frequency functions for double letters,
          1-letter, 2-letter, 3-letter words, word lengths, etc.
        o Create functions for vowel and consonant detection
          and solution, double vowel, double consonant,
          and vowel-consonant combinations.
        o Develop mechanisms for automated solving.
        o Remember that technical text may contain 
          unusual combinations such as triple letters,
          abbreviations, acronyms, etc.
"""

# funcs is initialized below after utility function defs, 
# since it will generate an error if the function names are
# are referenced before their definitions.
# A list of functions to be cycled through by 
# the reference dictionary.
# Default value:
# funcs = [get_char_freqs, get_word_start_freqs, get_word_end_freqs, 
                #get_bg_freqs, get_dblltr_freqs]

def load_puzzle(filename):
    """ load_puzzle(filename)
        NEW IN V3: Return value is cq object instead of puzzle, clue.
        Called by solve.py.  
    """
    with open(filename) as infile:
        text = infile.read()
        puzzle, clue = text.split('\n\n')
        cluematch = re.search(re.compile(r'.*([A-Z]).*([a-z])'), clue)
        clue = cluematch.groups()
        cq = Cryptoquip(puzzle, clue, from_file=filename)
        return cq

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
    """ New in v3. Given a text, randomly generate a 
        dictionary that encodes the text. Return a 
        Cryptoquip object initialized with a complete 
        trans_dict. Caller should store the trans_dict
        and then call cq.unset() before passing the cq
        to the solver.
    """
    code, actual = get_random_code()
    code = ''.join(code)
    actual = ''.join(actual)
    trtab = string.maketrans(actual, code)
    puzzle = text.lower().translate(trtab)
    cq = Cryptoquip(puzzle)
    cq.set(code, actual)
    return cq



# list of functions to call for reference dictionary use
#funcs = [get_char_freqs, get_word_start_freqs, get_word_end_freqs, 
                #get_bg_freqs, get_dblltr_freqs]
funcs = [get_char_freqs, get_word_start_freqs, get_word_end_freqs] 
                
# TODO: Consider different mechanisms for controlling which
#       frequency features are used.

class Cryptoquip(object):
    """ Cryptoquip(puzzle='')
        An object to encapsulate cryptoquip puzzle solving 
        behaviors.
    """
    
    def __init__(self, puzzle='', clue='', from_file='', clue_off=False):
        self.puzzle = puzzle    # The coded message to be solved.
        self.clue = clue        # The clue provided by the puzzle creator.
        self.from_file = from_file
        self.clue_off = clue_off
        self.trans = ''         # The (partially) decoded message. 
        self.trans_dict = {}    # Maps coded characters into actual ones.
                                #   To solve puzzle, use set/unset.
                                #   After each such modification, 
                                #   self.trans is printed.
        self._trtab = ''        # A string.maketrans() table for the translation.
                                # FOR PYTHON3: maketrans() is now a method of the
                                # str class.
        self._frm = ''          # Arguments for the call to string.maketrans():
        self._to = ''           #    _trtab = string.maketrans(_frm,_to)
        if not self.clue_off:
            self.set(clue[0], clue[1])
    
    def _update(self):
        "Update translation dictionary after a set/unset event."
        if self.clue_off:
            self.unset(clue[0])
        self._frm = "".join(self.trans_dict.keys())
        self._to = "".join(self.trans_dict.values())
        self._trtab = string.maketrans(self._frm,self._to)
        self.trans = self.puzzle.translate(self._trtab)
        self() # Behavior of self() is controlled by the __call__ method.
        #return '' # Suppresses output of "None"
        
    def set(self, keys, values):
        """ cq.set(self, keys, values)
            Called to add new guesses to translation dictionary. 
            Keys, representing coded letters, are converted to 
            upper-case; values, representing translated (decoded)
            letters, are converted to lower-case. If a single key
            is being set, Python-style index assignment can be 
            used--see Cryptoquip.__getitem__()."""
        for (key, value) in zip(keys.upper(),values.lower()):
            if value in self.trans_dict.values():
                # Enforce unique values so that code is consistent
                # (two chars cannot be decoded to the same char)
                already = [k for k in self.trans_dict.keys() 
                        if self.trans_dict[k] == value][0]
                if already != key:
                    pr = "{} is already set to {}; unset and proceed? "
                    prompt = pr.format(already, value)
                    response = raw_input(prompt)
                    if response.lower() in ['n','no']:
                        print('Very well. {} will be ignored.\n'.format(key))
                        continue
                    else:
                        print('Very well. {} will be unset.\n'.format(already))
                        cq.trans_dict.pop(already)
            self.trans_dict[key] = value
        self._update()
        #return ''

    def unset(self, keys=None):
        """ cq.unset(self, keys=None)
            Called to remove guesses from translation dictionary. 
            NEW in V3: If called without arguments, all guesses 
            are removed.
            Keys represent coded letters. If a key is not in
            the dictionary, no change is made. Since keys
            are always upper case, str.upper() is called before
            the lookup.
        """
        if not keys:
            keys = self.trans_dict.keys()
        for key in keys:
            key = key.upper()
            if key in self.trans_dict:
                _ = self.trans_dict.pop(key)
        self._update()
        #return ''

    def pd(self):
        "cq.pd() --> Print current translation dictionary."
        frm = " ".join([ c + ' |' for c in self._frm])
        to = " ".join([ c + ' |' for c in self._to])
        print("code: \t{}\nactual:\t{}".format(frm, to))
        #return ''
    
    def ptr(self):
        """ cq.ptr()
            Print message translated with current dictionary. 
            Usually a partial translation; upper case letters in
            printed message are not yet translated.
        """
        if self.trans:
            print(self.trans)
        else:
            self.ptx()
        #return ''
    
    def ptx(self):
        """ cq.ptx()
            Print coded (untranslated) message. Result will be
            all upper case.
        """
        print(self.puzzle)
        #return ''
    
    def __call__(self):
        """Call instance as a function, returns current 
        translation."""
        return self.ptr()
        #return ''
        
    def __getitem__(self, k):
        "Allow python-style indexing of instance name, eg cq[k]."
        return self.trans_dict[k.upper()]
 
    def __setitem__(self, k, v):
        """Allow python-style index assignment using instance 
        name, eg cq[k] = v. Effect is equivalent to calling
        Cryptoquip.set(k) = v."""
        self.trans_dict[k.upper()] = v.lower()
        self._update()
        print
        #return ''


class ref_dict(object):
    """ ref_dict(cryptoquip, ref_text, funcs)
        Maintain and use a reference dictionary for solving a cryptoquip puzzle.
        text is a large text with which to perform frequency calculations for
        comparison with frequency calculations of the same features in a cryptoquip.
        rdict is keyed on feature frequency functions; its values are tuples of 
        the [keys] and [freqs] lists returned by each function in funcs.
    """

    def __init__(self, cryptoquip, ref_text, funcs):
        self.cq = cryptoquip
        self.text = ref_text
        self.funcs = funcs
        self.rdict = dict()
        self.update()

    def update(self):
        """
            To be called whenever funcs is modified dynamically. 
            TODO: modify update to remove functions appropriately, 
            and write a setter method to modify self.funcs.
        """
        for fn in self.funcs:
            if fn not in self.rdict:
                keys, freqs = fn(self.text)
                updates = {fn: (keys, freqs)}
                self.rdict.update(updates)

    def compare_nt_freqs(self, n=10):
        """
            Prepare a series of frequency tables using funcs. Each table shows
            the top n frequencies for the puzzle (top) and reference (bottom)
            texts. Already translated tokens are not displayed.
        """
        def _cull(transchars, keys, vals):
            """
                Remove already translated tokens from keys/vals lists.
                Only remove Ngram tokens if all characters in the Ngram
                have been translated.
            """
            transkeys = []
            for key in keys:
                if all([c in transchars for c in key]):
                    transkeys.append(key)
            culled = [(k, v) for (k, v) in zip(keys, vals) if k not in transkeys]
            culled_keys = [c[0] for c in culled]
            culled_vals = [c[1] for c in culled]
            return culled_keys, culled_vals

        for fn in self.funcs:
            cq_transchars = [k.lower() for k in self.cq.trans_dict.keys()]
            cq_transvals = self.cq.trans_dict.values()
            cqkeys, cqfreqs = _cull(cq_transchars, *fn(self.cq.puzzle))
            rkeys, rfreqs = _cull(cq_transvals, *self.rdict[fn])

            tmp, cqfreqs = get_sorted(cqkeys, cqfreqs, n)
            cqkeys = [ k.upper() for k in tmp ]
            rkeys, rfreqs = get_sorted(rkeys, rfreqs, n)
            n = min(n, len(rkeys), len(cqkeys))
            print('{}:'.format(fn.__name__))
            print(('{:^6}'*n).format(*cqkeys))
            print(('{:^6.1f}'*n).format(*cqfreqs))
            print(('{:^6}'*n).format(*rkeys))
            print(('{:^6.1f}'*n).format(*rfreqs))

    def compare_prob_mass(self, fn=get_char_freqs):
        """ compare_prob_mass(fn=get_char_freqs)
            NEW in V3. Current implementation only handles default fn.
            TODO: modify to work with other fns(?)
            Evaluate the total assigned probability masses for comparison.
            Puzzle assigned mass: 
                numerator -- # of l/c chars in cq.trans
                denominator -- len(cq.puzzle)
            Translation assigned mass:
                sum of freqs for cq.trans_dict.values()
            Motivation: trans_dict has coverage for the puzzle and for
            the language. A good partial translation will probably cover
            a portion of the puzzle approximately equal to the portion of 
            the language covered by the actual characters.
            Example:
                        cq.puzzle = 'CVPUKMA BONILG ILNMVMQ'
                        cq.trans_dict = {'V': 'a', 'M': 'r', 
                                            'I': 'l', 'L': 'i'}
                        cq.trans = 'CaPUKrA BONliG liNrarQ'
                The coverage of 'VMIL' is 9 characters out of 20.
                The coverage of 'arli' is the sum of frequencies
                from ref_dict, eg 8.0 + 6.1 + 7.2 + 3.9 = 25.2%
            The idea is that for a good translation, the coverages 
            will eventually become similar, even while the translation
            is incomplete. Puzzle size is a significant issue, so 
            whether this is helpful for solving short puzzles is an 
            open question.
        """
        rkeys, rfreqs = self.rdict[fn]          # Get the reference frequencies
        cqkeys = self.cq.trans_dict.keys()  # Get the already translated chars

        squeezed = [c for c in self.cq.puzzle if c in string.uppercase]
        # Copy of puzzle with spaces and punc removed
        
        cq_covered = [c for c in squeezed if c in cqkeys]
        total_cq_cv = len(cq_covered)
        # List and number of puzzle chars that have been translated

        cq_cv_counts = [ cq_covered.count(c) for c in cqkeys]
        cq_cv_freqs = [ float(c) * 100 / len(squeezed) for c in cq_cv_counts]
        # Counts and frequencies for translated chars in puzzle
        # (in order to calculate  puzzle mass covered by each character)

        mass_solved = sum(cq_cv_freqs)  # The total percentage of solved chars
        cqkeys, cqfreqs = get_sorted(cqkeys, cq_cv_freqs, n=len(cqkeys))

        ref_covered = self.cq.trans_dict.values()
        # The refence chars corresponding to the solved chars
        ref_cv_freqs = [ f for rk in ref_covered 
                for k, f in zip(rkeys, rfreqs) if k == rk ]

        ref_mass = sum(ref_cv_freqs)
        # The frequencies for the reference chars and the percentage
        # of the reference chars covered by them

        # Now order the ref chars/freqs according to the sorted
        # cqkeys/freqs and print them. 
        # TODO: This is ugly! There has got to be a more elegant way.
        to_print = [[], [], [], []]
        for cqk, cqf in zip(cqkeys, cqfreqs):
            rfind = self.cq.trans_dict[cqk]
            for rk, rf in zip(ref_covered, ref_cv_freqs):
                if rk == rfind:
                    to_print[0].append(cqk)
                    to_print[1].append(cqf)
                    to_print[2].append(rk)
                    to_print[3].append(rf)

        n = len(cqkeys)
        print('Probability masses for {}'.format(fn.__name__))
        print('Code: total mass = {:.2f}'.format(mass_solved))
        print(('{:^6}' * n).format(*to_print[0]))
        print(('{:^6.1f}' * n).format(*to_print[1]))
        print('Reference: total mass = {:.2f}'.format(ref_mass))
        print(('{:^6}' * n).format(*to_print[2]))
        print(('{:^6.1f}' * n).format(*to_print[3]))

if __name__ == '__main__':
    print('\nWelcome to the Cryptoquip solver!')
    filename = raw_input('Puzzle file name: ')
    ref_file = raw_input('Reference dictionary file name (default ACDoyle.txt): ')
    if not ref_file:
        ref_file = 'data/ACDoyle.txt'
    cq = load_puzzle(filename)
    ref = load_ref(ref_file)
    print('\nLoading reference dictionary...')
    rd = ref_dict(cq, ref, funcs)
    print('Ready!')
