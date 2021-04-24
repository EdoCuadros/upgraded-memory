from DATA.Persona import Persona


class Cliente (Persona):

    def __init__(self,Id,nombre,apellido,identificacion,email,password,foto, telefono, direccion):
        super().__init__(Id,nombre,apellido,identificacion,email,password,foto, telefono)
        self.__direccion = direccion


    def getDireccion(self):
        return self.__direccion

    def setDireccion(self,direccion):
        self.__direccion = direccion


    def __str__(self):
        return super().__str__() + "  >>Dirección: "+self.getDireccion()