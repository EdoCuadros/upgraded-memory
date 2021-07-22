

class Incidente:
    # Init function
    def __init__(self, id=None,description=None, address=None, date = None, idCliente=None):
        self.__id = id
        self.__description = description
        self.__address = address
        self.__date = date
        self.__idCliente = idCliente

    # Setters and Getters
    def getId(self):
        return int(self.__id)

    def setId(self,ID):
        self.__id = int(ID)

    def setDescription(self, description):
        self.__description = description

    def getDescription(self):
        return self.__description

    def setAddress(self, address):
        self.__address = address

    def getAddress(self):
        return self.__address

    def setDate(self, date):
        self.__date = date

    def getDate(self):
        return str(self.__date)

    def setIdCliente(self, idCliente):
        self.__idCliente = idCliente

    def getIdCliente(self):
        return self.__idCliente

    # toString Method

    def __str__(self):
        return "  >>ID: " + str(self.getId()) + "  >>Descripción: " + self.getDescription() + "  >>Dirección: " + self.getAddress() + " >>Fecha: " + self.getDate() + \
               "  >>ID Cliente: " + str(self.getIdCliente())




