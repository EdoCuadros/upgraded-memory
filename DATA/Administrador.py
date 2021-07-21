from DATA.Persona import Persona


class Administrador(Persona):
    def __init__(self, Id, nombre, apellido, identificacion, email, password, foto, telefono, direccion,rol):
        super().__init__(Id, nombre, apellido, identificacion, email, password, foto, telefono,rol)
        self.__direccion = direccion


    def getDireccion(self):
        return self.__direccion

    def setDireccion(self, direccion):
        self.__direccion = direccion

    def eliminar(self, id, root):
        pass

    def __str__(self):
        return "Administrador: " + super().__str__() + "  >>Dirección: " + self.getDireccion()

    def toStringData(self):
        return ""+ str(super().getId())+","+super().getNombre()+","+super().getApellido()+","+super().getIdentificacion()+","+\
                super().getCorreo()+","+super().getPassword()+","+super().getFoto()+","+super().getTelefono()+","+self.getDireccion()

#ID,Nombre,Apellido,Identificación,Correo,Password,Teléfono,Dirección