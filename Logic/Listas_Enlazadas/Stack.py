from Linked_List import linked_List


class Stack(object):
    def __int__(self):
        self.elements = linked_List()

    def push(self, data):
        self.elements.pushBack(data)

    def pop(self):
        try:
            return self.elements.popFront()
        except:
            raise ValueError("Error!! Empty Stack")

    def top(self):
        return self.elements.head

    def back(self):
        return self.elements.tail

    def isEmpty(self):
        return self.elements.is_empty()

    def __str__(self):
        return self.elements.__str__()