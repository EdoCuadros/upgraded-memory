import csv

from DATA.Administrador import Administrador
from DATA.Persona import Persona
from Logic.AVLTree.AVLArbol import AVLArbol


class AdministradorDAO(Persona):
    def __init__(self):
        self.__path = None
        self.__arbol = AVLArbol()
        self.__administrador = Administrador()
        self.__root = None
        self.__archivo = None

    def setPredioToAVL(self,Predio):
        self.setPredio(Predio)
        self.__root = self.__arbol.insert_node(self.__root,self.getPredio().getID(),self.getPredio())

    def setAdministrador(self,data):
        self.__administrador = Administrador(int(data[0]), data[1], data[2], data[3], data[4], data[5],"foto", data[6], data[7])

    def getRoot(self):
        return self.__root

    def deleteAdministrador(self,root,ID):
        self.__arbol.delete_node(root,ID)

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

    def crearAdministrador(self, administrador):
        myData = administrador
        myFile = open('../Resources/Data_Administrador/Tabla_Administradores.csv', 'w')
        with myFile:
            writer = csv.writer(myFile)
            writer.writerows(myData)

        print("Archivo")

    def correolibre(self, ID):
        pass

