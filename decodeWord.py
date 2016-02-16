import wordPatterns
from collections import Counter

def decodeWord(word):

    # Character frequency dictionary
    frequencies = {'E':12.7, 'T':9.1, 'A':8.2, 'O':7.5, 'I':7, 'N':6.7, 'S':6.3, 'H':6.1, 'R':6, 'D':4.3, 'L':4, 'U':2.8, 'C':2.8, 'M':2.4, 'W':2.4, 'F':2.2, 'Y':2, 'G':2, 'P':1.9, 'B':1.5, 'V':1, 'K':0.8, 'X':0.2, 'J':0.2, 'Q':0.1, 'Z':0.1}
    # Finds all possibilities for argument    
    possibilities = wordPatterns.allPatterns[getWordPattern(word)];
    # The following code rates each possible translation by character
    # and creates a dictionary
    possibleValues = {}
    for p in possibilities:
        value = 0
        for c in p:
            value += frequencies[c]
        possibleValues[value] = p
    # Returns the most likely solution
    return sorted(possibleValues.items())[::-1][0][1]
    
def getWordPattern(word):
    letterNum = {}
    wordPattern = []
    nextNum = 0
    for letter in word:
        if letter not in letterNum:
            letterNum[letter] = str(nextNum)
            nextNum += 1
        wordPattern.append(letterNum[letter])
    return ".".join(wordPattern)  
