import csv

from DATA.Persona import Persona
from Logic.AVLTree.AVLArbol import AVLArbol


class AdministradorDAO(Persona):
    def __init__(self):
        self.__path = None
        self.__arbol = AVLArbol()
        self.__root = None
        self.__archivo = None



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

