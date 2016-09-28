# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
import collections, string

Puzzle = collections.namedtuple('Puzzle', ['puzzle' # all caps
					'clue',  # tuple ('UC', 'lc')
					'table', # dict key:UC val:lc
					'tr'     # mixed uc/lc
					])

def remove_punc(line):
    line = line.translate(
                                    # some words will begin with apostrophe
                                    # eg "don 't" will be two words
    words = line.split()
    for word in words:


puzzle_file_path = '/home/vagrant/Development/ccrg/Cryptoquip/data/'
file_name = 'cq_160222.txt'
with open(puzzle_file_path + file_name) as f:
    text = [line for line in f.readlines()]
    


puzzle_lines = [line.strip() for line in text[:-1]] 
puzzle_words = [w for line in puzzle_lines for w in line.split() ]
clue = tuple([char for char in text[-1] if char not in '#= \n'])
