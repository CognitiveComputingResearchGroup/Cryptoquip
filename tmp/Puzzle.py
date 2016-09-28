#! /usr/bin/python2.7
import string

"""
    Puzzle.py
    TODO
"""

class Puzzle(object):
    """
        Maintain a cryptoquip puzzle instance.
    """
    def __init__(self, puzzle=''):
        self._puzzle = puzzle.upper()    # Message to be solved.
        self._trans_dict = dict(zip(string.uppercase,string.uppercase))

    def set(self, keys, values):
        """ Puzzle.set(keys, values)
            Add new guesses to the puzzle translation dictionary.
        """
        already = dict(zip(self._trans_dict.values(),self._trans_dict.keys()))
        for (key, value) in zip(keys.upper(),values.lower()):
            if value in already and already[value] is not key:
                self.unset(already)
            # Enforce unique values so that code is consistent
            # (two chars cannot be decoded to the same char)
            self._trans_dict[key] = value

    def unset(self, keys=None):
        """ Puzzle.unset(keys)
            Remove guesses from the puzzle translation dictionary.
            If keys = None, remove all guesses.
        """
        if not keys:
            keys = self._trans_dict.keys()
        for key in keys:
            key = key.upper()
            self._trans_dict[key] = key

    def get_trans_dict(self):
        """ Puzzle.get_trans_dict()
            Return the current translation dictionary."""
        translated = dict([(k,v) for (k,v) in self._trans_dict.items() if k is not v])
        frm = " ".join([ c + ' |' for c in translated.keys()])
        to = " ".join([ c + ' |' for c in translated.values()])

        return "code: \t{}\nactual:\t{}".format(frm, to)

    def get_translation(self):
        """ Puzzle.get_translation()
            Print the puzzle translated with current dictionary.
        """
        trans_keys = ''.join(self._trans_dict.keys())
        trans_values = ''.join(self._trans_dict.values())

        trans_table = string.maketrans(trans_keys, trans_values)
        translation = self._puzzle.translate(trans_table)
        return translation

    def get_puzzle(self):
        """ Puzzle.get_puzzle()
            Print the coded (untranslated) puzzle.
        """
        return self._puzzle

    def __call__(self):
        return self.get_translation()

    def __getitem__(self, k):
        return self._trans_dict[k.upper()]
 
    def __setitem__(self, k, v):
        self.set(k.upper(),v.lower())

