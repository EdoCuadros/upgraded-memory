class Persona:
    def __init__(self,Id = None, nombre=None, apellido=None , identificacion=None, email=None,password=None, foto=None, telefono=None):
        self.__id = Id
        self.__nombre = nombre
        self.__apellido = apellido
        self.__identificacion = identificacion
        self.__correo = email
        self.__password = password
        self.__foto = foto
        self.__telefono = telefono

    def getId(self):
        return self.__id
    def setId(self,ID):
        self.__id = ID

    def getNombre(self):
        return self.__nombre
    def setNombre(self, nombre):
        self.__nombre = nombre

    def getApellido(self):
        return self.__apellido
    def setApellido(self,apellido):
        self.__apellido = apellido

    def getIdentificacion(self):
        return self.__identificacion
    def setIdentificacion(self,identificacion):
        self.__identificacion = identificacion

    def getCorreo(self):
        return self.__correo
    def setCorreo(self,email):
        self.__correo = email

    def getPassword(self):
        return self.__password
    def setPassword(self,password):
        self.__password = password

    def getFoto(self):
        return self.__foto
    def setFoto(self,foto):
        self.__foto = foto

    def getTelefono(self):
        return self.__telefono
    def setTelefono(self,telefono):
        self.__telefono = telefono

    def __str__(self) -> str:
        return "  >>ID: " + str(self.getId()) + "  >>Nombre: " + self.getNombre()+ " "+ self.getApellido() + \
               "  >>Identificación: " + str(self.getIdentificacion()) + "  >>Password: "+self.getPassword()+"  >>Correo: " + self.getCorreo() + \
               "  >>Teléfono: " + str(self.getTelefono())
