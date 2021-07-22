from DATA.Incidente import Incidente
from Logic.AVLTree.AVLArbol import AVLArbol


class IncidenteDAO:
    def __init__(self):
        self.__path = None
        self.__arbol = AVLArbol()
        self.__incidente = Incidente("","", "", "", "")
        self.__root = None
        self.__archivo = None
        self.__id_increment = 1

    def crearAVL(self, archivo):
        for data in archivo:
            self.setIncidente(data)
            self.__root = self.__arbol.insert_node(self.__root, self.getIncidente().getId(), self.getIncidente())
            self.__id_increment += 1

    def insertar(self, incidente):
        self.setIncidente1(incidente)
        self.__root = self.__arbol.insert_node(self.__root, self.getIncidente().getId(), self.getIncidente())
        self.__id_increment += 1

    def obtenerIncidente(self, idCliente):
        for i in range(1,self.__id_increment):
            incidente = self.searchID(self.__root,i)
            if(incidente.getIdCliente()==idCliente):
                print(incidente)



    def getIdIncremental(self):
        return self.__id_increment

    def getIncidente(self):
        return self.__incidente

    def setIncidente1(self, Incidente):
        self.__incidente = Incidente

    def setIncidente(self, data):
        self.__incidente = Incidente(int(data[0]), data[1], data[2], data[3], data[4])

    def getRoot(self):
        return self.__root

    def delete(self,root, ID):
        self.__arbol.delete_node(root, ID)
        self.__id_increment -= 1

    def searchID(self,root, key):
        temp = root
        try:
            if temp.key == key:
                return temp.data
            elif key < temp.key:
                return self.searchID(temp.left, key)
            elif key > temp.key:
                return self.searchID(temp.right, key)
        except Exception:
            return "!Not found¡"

    def __str__(self,currPtr, indent, last):
        self.__arbol.printHelper(currPtr,indent,last)