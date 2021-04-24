class Persona:
    def __init__(self, Id, nombre, apellido, ident, email, password, foto, telefono):
        self.__id = Id
        self.__nombre = nombre
        self.__apellido = apellido
        self.__identificacion = ident
        self.__correo = email
        self.__password = password
        self.__foto = foto
        self.__telefono = telefono

        # Getts and Setts

        def getApellido(self):
            return self.__Apellido

        def setApellido(self, apellido):
            self.__Apellido = apellido

        def getCorreo(self):
            return self.__Correo

        def setCorreo(self, correo):
            self.__Correo = correo

        def getFoto(self):
            return self.__Foto

        def setFoto(self, foto):
            self.__Foto = foto

        def getClave(self):
            return self.__Clave

        def setClave(self, clave):
            self.__Clave = clave

        def getIdentificacion(self):
            return self.__Identificacion

        def setIdentificacion(self, ident):
            self.__Identificacion = ident

        def getID(self):
            return self.__ID

        def setID(self, Id):
            self.__ID = Id

        def getNombre(self):
            return self.__Nombre

        def setNombre(self, nombre):
            self.__Nombre = nombre

        def getTelefono(self):
            return self.__Telefono

        def setTelefono(self, telefono):
            self.__Telefono = telefono

    #Metodo toString

    def __str__(self):
        return (super().__str__() + "Nombre: " + self.getNombre() + "\n"
                + "Apellido: " + self.getApellido() + "\n"
                + "Clave de acceso: " + self.getClave() + "\n" + "Correo: "
                + self.getCorreo() + "\n" + "Identificacion: "
                + str(self.getIdentificacion()) + "\n" + "Id Usuario: "
                + str(self.getID()) + "\n" + "Telefono: " + str(self.getTelefono()))
