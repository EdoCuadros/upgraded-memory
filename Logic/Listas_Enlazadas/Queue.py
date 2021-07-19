from Linked_List import linked_List

class Queue(object):
    def __init__(self):
        self.elements = linked_List()

    def enqueue(self,data):
        self.elements.pushFront(data)

    def Dequeue(self):
        try:
            return self.elements.popBack()
        except:
            raise ValueError("Error!! Empty Queue")

    def isEmpty(self):
        return self.elements.is_empty()

    def __str__(self):
        return self.elements.__str__()