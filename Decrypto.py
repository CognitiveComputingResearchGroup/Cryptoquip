import pprint
import wordPatterns
import collections
import enchant

def decrypt(cryptoquip, hint):
    mapArray = []
    for cipher in cryptoquip.split(' '):
        mapArray.append(addValuesToMap(cipher, hint))
    for m in range(1,len(mapArray)):
        mapArray[0] = intersect(mapArray[0], mapArray[m])
    mapArray[0] = removeSolvedChars(mapArray[0])
    #pprint.pprint(mapArray[0])
    return mapArray[0]

def mapToText(cipher, charMap):
    txt=""
    for char in cipher:
        if char.isalpha():
            if len(charMap[char]) == 1:
                txt+= list(charMap[char])[0]
            else:
                txt+= "_"
        else:
            txt += char

    return txt
def removeSolvedChars(charMap):
    looping = True
    while looping:
        looping = False
        solvedChars = []
        for letter in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
            if len(charMap[letter]) == 1:
                solvedChars.append(charMap[letter][0])
        for letter in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
            for s in solvedChars:
                if len(charMap[letter]) != 1 and (s in charMap[letter]):
                       charMap[letter].remove(s)
                       if len(charMap[letter]) == 1:
                           looping = True
    return charMap
        

def addValuesToMap(phrase, hint):
    nMap = newMap()
    nMap[hint[0]].append(hint[2])
    candidates = wordPatterns.allPatterns[getWordPattern(phrase)]
    for i in range(len(phrase)):
        for candidate in candidates:
            if candidate[i] not in nMap[phrase[i]] and candidate[i] is not hint[2]:
                nMap[phrase[i]].append(candidate[i])
    return nMap

def intersect(a,b):
    nMap = newMap()
    for letter in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
        if a[letter] == []:
            nMap[letter] = b[letter]
        elif b[letter] == []:
            nMap[letter] = a[letter]
        else:
            for mappedChar in a[letter]:
                if mappedChar in b[letter]:
                    nMap[letter].append(mappedChar)
    return nMap

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

def setup():
    allPatterns = {}

    file = open('dictionary.txt')
    wordList = file.read().split("\n")
    file.close()

    for word in wordList:
        pattern = getWordPattern(word)
        if pattern not in allPatterns:
            allPatterns[pattern] = [word]
        else:
            allPatterns[pattern].append(word)
    file = open('wordPatterns.py', 'w')
    file.write('allPatterns = ')
    file.write(pprint.pformat(allPatterns))
    file.close()

def newMap():
    return {'A': [], 'B': [], 'C': [], 'D': [], 'E': [], 'F': [], 'G': [], 'H': [], 'I': [], 'J': [], 'K': [], 'L': [], 'M': [], 'N': [], 'O': [], 'P': [], 'Q': [], 'R': [], 'S': [], 'T': [], 'U': [], 'V': [], 'W': [], 'X': [], 'Y': [], 'Z': []}
