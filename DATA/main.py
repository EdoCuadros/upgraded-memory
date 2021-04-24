from random import randint
import time


def write() -> int:
    write_file = open('testfiletest.txt', 'w')
    for i in range(100):
        letters = 'abcdefghijklmnopqrstuvwxyz'
        special_characters = '#%$!*^=&/\_-+¿?(){}[]'
        a, b, c, d, e = letters[randint(0, 25)], letters[randint(0, 25)], letters[randint(0, 25)], \
                        letters[randint(0, 25)], letters[randint(0, 25)]
        email, door, password = a + b + c + d + e, special_characters[randint(0, 20)], d + a + c + b + e
        write_file.write(email + str(randint(1, 100)) + '@unal.edu.co,' + door + password + str(randint(0, 1000)) + door
                         + '\n')
    write_file.close()
    return 0


def readlist() -> int:
    List = []
    read_file = open('testfile100000.csv', 'r')
    for linea in read_file.readlines():
        print(linea)
        List.append(linea)
    read_file.close()
    return 0


start = time.time()
readlist()
finish = time.time()
print(finish - start)

