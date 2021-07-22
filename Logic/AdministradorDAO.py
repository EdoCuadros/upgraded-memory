import csv

from DATA.Administrador import Administrador
from DATA.Persona import Persona
from Logic.AVLTree.AVLArbol import AVLArbol


class AdministradorDAO:
    def __init__(self):
        self.__path = None
        self.__arbol = AVLArbol()
        self.__administrador = Administrador(None,"","","","","","","","")
        self.__root = None
        self.__archivo = None
        self.__id_increment = 0

    def crearAVL(self,archivo):
        self.__archivo = archivo
        for data in archivo:
            self.setAdministrador(data)
            self.__root = self.__arbol.insert_node(self.__root,self.getAdministrador().getIdentificacion(),self.getAdministrador())
            self.__id_increment += 1

    def insertarAdmin(self,admin):
        self.setAdministrador(admin)
        self.__root = self.__arbol.insert_node(self.__root, self.getAdministrador().getIdentificacion(), self.getAdministrador())
        self.__id_increment += 1

    def getAdministrador(self):
        return self.__administrador

    def getIdIncremental(self):
        return self.__id_increment

    def setAdministrador(self,data):
        self.__administrador = Administrador(int(data[0]), data[1], data[2], data[3], data[4], data[5], "foto", data[6],data[7])

    def setAdministrador1(self, admin):
        self.__administrador = admin

    def getRoot(self):
        return self.__root

    def delete(self,root,ID):
        self.__arbol.delete_node(root,ID)
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

    def existIdentificacion(self, ident):
        try:
            if (self.searchID(self.getRoot(), ident).getIdentificacion() == ident):
                return True
            return False
        except Exception as e:
            return False

    def obtenerPrimero(self):
        return self.__arbol.getMinValueNode(self.__root)

    def agregarAdministradorArchivo(self):
        myData = self.getAdministrador().toStringData().split(",")
        myFile = open('../Resources/Data_Administrador/Tabla_Administradores.csv', 'w')
        with myFile:
            writer = csv.writer(myFile)
            writer.writerow(u for u in myData)
        print(">>>>>>>>>>>>>>>  ¡Se creó exitosamente! <<<<<<<<<<<<<<<<")



    def __str__(self,currPtr, indent, last):
        self.__arbol.printHelper(currPtr,indent,last)

    def correolibre(self, ID):
        pass




"""adm = AdministradorDAO()
i=0
while i<=3:
    i+=1
    print(">>< "+str(i))
    nombre = input("Digite su nombre: ")
    apellido = input("Digite su apellido completo: ")
    cedula = input("Digite su cedula: " )
    correo = input("Digite su dirección de correo electrónico: ")
    telefono = input("Digite su numero de telefono: ")
    direccion = input("Digite su dirección de vivienda: ")
    password = input("Digite su contraseña: ")
    data = []
    data.append(i)
    data.append(nombre)
    data.append(apellido)
    data.append(cedula)
    data.append(correo)
    data.append(password)
    data.append(telefono)
    data.append(direccion)
    adm.crearAVL(data)

adm.__str__(adm.getRoot(),"",True)

print(adm.obtenerPrimero().data)
adm.__str__(adm.getRoot(), "", True)
adm.deleteAdministrador(adm.getRoot(),adm.obtenerPrimero())
adm.setAdministrador(data)
adm.crearAdministrador()
adm.crearAdministrador()
adm.crearAdministrador()
print(adm.getAdministrador())
print(adm.getAdministrador().toStringData())
print(type(adm.getAdministrador().toStringData()))"""