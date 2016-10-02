#! /usr/bin/python2.7
import random
import re
import string
from cq_classes import Puzzle

"""
    cq_utilities.py
    TODO
"""

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
    return "".join(code), "".join(actual)


def puzzlify(text):
    """ Given a text, randomly generate a dictionary 
        to encode the text. Return a Puzzle in the solved
        state.
    """
    code, actual = get_random_code()
    encode_table = string.maketrans(actual, code)
    puzz = text.lower().translate(encode_table)
    puzzle = Puzzle(puzz)
    puzzle.set(code, actual)
    return puzzle


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

    

