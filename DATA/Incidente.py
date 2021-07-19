import Cliente


class Incident:

    # Init function

    def __init__(self, description: str, address: str, date: str, requester: Cliente):
        self.description = description
        self.address = address
        self.date = date
        self.requester = requester

    # Setters and Getters

    def setDescription(self, description: str):
        self.description = description

    def getDescription(self) -> str:
        return self.description

    def setAddress(self, address: str):
        self.address = address

    def getAddress(self) -> str:
        return self.address

    def setDate(self, date: str):
        self.date = date

    def getDate(self) -> str:
        return self.date

    def setRequester(self, client: Cliente):
        self.requester = client

    def getRequester(self) -> Cliente:
        return self.requester

    # toString Method

    def __str__(self) -> str:
        return "  >>Descripción: " + self.getDescription() + "  >>Dirección: " + self.getAddress() + " >>Fecha: " + self.getDate() + \
               "  >>Cliente: " + self.getRequester()




