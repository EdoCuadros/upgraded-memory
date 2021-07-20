from builtins import print

class nodeD(object):
    def __init__(self, dato=None, prev = None, next = None):
        self.dato = dato
        self.prev = prev
        self.next = next
    def __str__(self):
        return str(self.dato)


class node(object):
    def __init__(self, dato=None, next = None):
        self.dato = dato
        self.next = next
    def __str__(self):
        return str(self.dato)


class linked_List(object):
    def __init__(self):
        self.head = None
        self.tail = None

    def pushFront(self,data):
        new_node = node(data,self.head)
        self.head = new_node
        if(self.tail == None):
            self.tail = self.head

    def is_empty(self):
        return self.head == None

    def popFront(self):
        if(self.head == None):
            print("Error!!! Empty List")
        else:
            self.head=self.head.next
            if(self.head == None):
                self.tail=None

    def pushBack(self, data):
        new_node = node(data, None)
        if(self.tail == None):
            self.tail=new_node
            self.head=new_node
        else:
            self.tail.next =new_node
            self.tail = new_node

    def popBack(self):
        if(self.head==None):
            print("Error!!! Empty List")
        if(self.head==self.tail):
            self.tail=None
            self.head=None
        else:
            p=self.head
            while(p.next.next is not None):
                p=p.next
            temp=p.next
            p.next = None
            self.tail = p
            return temp

    def addAffter(self,nodo,data):
        new_node = node(data,nodo.next)
        nodo.next = new_node
        if(self.tail == nodo):
            self.tail = new_node

    def __str__(self):
        node = self.head
        while node != None:
            print(node.dato, end="\n")
            node = node.next



class DLinkedList(object):

    def __init__(self):
        self.head = None
        self.tail = None
        self.__size = 0

    def pushFront(self, data):
        new_node = nodeD(data, None, self.head)
        if(self.tail == None):
            self.tail = new_node
            self.head = new_node
        else:
            self.head.prev = new_node
            new_node.next = self.head
            self.head = new_node

    def append(self,data):
        new_node = nodeD(data, None, None)
        self.__size += 1
        if (self.tail == None):
            self.tail = new_node
            self.head = new_node
        else:
            self.tail.next = new_node
            new_node.prev = self.tail
            self.tail = new_node

    def popBack(self):
        if(self.head==None):
            print("Error!!! Empty List")
        if (self.head==self.tail):
            self.__size -= 1
            self.tail = None
            self.head = None
        else:
            self.__size -= 1
            self.tail = self.tail.prev
            self.tail.next = None

    def pop(self, data):
        if (self.head == None):
            return "Error!!! Empty List"
        nodo = self.searchElement(data)
        if (self.head == self.tail):
            self.__size -= 1
            self.tail = None
            self.head = None
        elif(self.tail == nodo):
            self.__size -=  1
            self.tail = nodo.prev
            nodo.prev.next = None
        elif(self.head == nodo):
            self.__size -= 1
            self.head = nodo.next
            nodo.next.prev = None
        else:
            self.__size -= 1
            nodo.prev.next = nodo.next
            nodo.next.prev = nodo.prev

    def getSize(self):
        return self.__size

    def isEmpty(self):
        return self.head is None

    def searchElement(self,data):
        nodo = self.head
        while nodo.dato != data:
            nodo = nodo.next
            if(nodo == self.tail):
                if(nodo.dato==data):
                    return nodo
                else:
                    return "!Not Found Element¡"
        return nodo

    def __str__(self):
        node = self.head
        while node != None:
            print(node.dato)
            node = node.next



#listas =DLinkedList()
#print(listas.isEmpty())
"""listas.append(2)
listas.append(3)
listas.append(4)
listas.append(6)
listas.append(7)
listas.append(8)
listas.__str__()
element = listas.searchElement(7)
print(element)
print("\n")
listas.pop(2)
listas.pop(8)
listas.__str__()
print(listas.getSize())"""

