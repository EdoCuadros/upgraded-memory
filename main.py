import csv
import time

from Logic.base_datos import *



def listaArchivo(path,index):
    with open(path[index]) as archivo_data:
        entrada = csv.reader(archivo_data)
        results = list(entrada)
    return results

def actualizar(baseDatos):
    while True:
        ident = input("Ingrese la identificación del usuario a actualizar: ")
        if (baseDatos.existIdentificacion(ident)):

            client = baseDatos.search(ident)
            nombre = input("Digite su nombre: ")
            apellido = input("Digite su apellido completo: ")
            cedula = input("Digite su cedula: ")
            correo = input("Digite su dirección de correo electrónico: ")
            telefono = input("Digite su numero de telefono: ")
            direccion = input("Digite su dirección de vivienda: ")
            password = input("Digite su contraseña: ")
            inicio = time.time()
            client.setNombre(nombre)
            client.setApellido(apellido)
            client.setIdentificacion(cedula)
            client.setCorreo(correo)
            client.setPassword(password)
            client.setTelefono(telefono)
            client.setDireccion(direccion)
            fin = time.time()
            print("Tiempo:", fin - inicio, "segundos")
            print("!!!!!!!Actualizado con Exitó¡¡¡¡¡")
            break
        else:
            print("!Not Found Client¡\n")




def consultar(baseDatos):
    ident = input("Ingrese la identificación del usuario: ")
    inicio = time.time()
    client = baseDatos.search(ident)

    print(client)
    fin = time.time()
    print("Tiempo:", fin - inicio, "segundos")


def eliminar(baseDatos):
    ident = input("Ingrese la identificación del usuario: ")
    client = baseDatos.search(ident)
    print(client)
    inicio = time.time()
    baseDatos.delete(ident)
    fin = time.time()
    print("Eliminado con exitó")
    print("Tiempo:", fin - inicio, "segundos")

def buscar(baseDatos):
    ident = input("Ingrese la identificación del usuario: ")
    client = baseDatos.search(ident)
    print(client)

def loginAdministrador(baseDatos):
    while True:
        print("******* Menú ********")
        print("")
        print("1. Consultar")
        print("2. Actualizar")
        print("3. Eliminar")
        print("4. Buscar Cliente")
        print("5. Ver todos los clientes")
        print("6. Volver")
        try:
            opcion = input("Opción: ")
            if(opcion=="1"):
                consultar(baseDatos)
            elif(opcion=="2"): actualizar(baseDatos)
            elif(opcion=="3"): eliminar(baseDatos)
            elif (opcion == "4"): buscar(baseDatos)
            elif (opcion == "5"):
                inicio = time.time()
                baseDatos.getLista().__str__()
                fin = time.time()
                print("Tiempo:", fin - inicio, "segundos")
            elif (opcion == "6"):
                break
        except Exception as e:
            print("Error : Ingrese una opción válida")



def inicio(baseDatos):

    listaClientes = baseDatos.getLista()
    print(baseDatos.search("847017709"))
    while (True):
        try:
            d1 = input("Bienvenido al portal, ¿Qué desea hacer?\n1)Iniciar sesión\n2)Registrarse\n3)Salir\n")
            if d1 == "1":
                while True:
                    usuario_id = input("Ingrese por favor su identificación: ")
                    if (baseDatos.existIdentificacion(usuario_id)):
                        cliente = baseDatos.search(usuario_id)
                        break
                    else: print("!Not Found Client¡\n")
                while True:
                    contraseña = input("Contraseña: ")
                    if(cliente.getPassword() == contraseña):
                        loginAdministrador(baseDatos)
                        break
                    else: print("Contraseña Incorrecta\n")
                # Aqui va el metodo para buscar el cliente en la base de datos

            elif d1 == "2":

                nombre = input("Digite su nombre: ")
                apellido = input("Digite su apellido completo: ")
                while True:
                    cedula = input("Digite su cedula: ")
                    if (baseDatos.existIdentificacion(cedula)):
                        print("Error: Existe un cliente con el mismo número de cédula")
                    else:
                        break

                correo = input("Digite su dirección de correo electrónico: ")
                telefono = input("Digite su numero de telefono: ")
                direccion = input("Digite su dirección de vivienda: ")
                password = input("Digite su contraseña: ")
                id_1=int(baseDatos.getCliente().getId())
                c1 = Cliente(id_1+1, nombre, apellido, cedula, correo, password, "12123.jpg", telefono, direccion)
                print("Registro realizado exitosamente")
                print(c1)
                # Aqui va el metodo para crear el cliente en la base de datos

                listaClientes.append(c1)
                listaClientes.__str__()
            elif(d1 == "3"):
                break
            else:
                print("Error : Ingrese una opción válida")
        except Exception as e:
            print(e ,"Error ingrese una opción válida")


if __name__ == '__main__':
    path = ["./Resources/datamil.csv", "./Resources/data10mil.csv", "./Resources/data100mil_1.csv",
            "./Resources/data100mil_2.csv", "./Resources/data100mil_3.csv",
            "./Resources/data100mil_4.csv", "./Resources/data100mil_5.csv", "./Resources/data100mil_6.csv",
            "./Resources/data100mil_7.csv"]

    results = []
    results = listaArchivo(path, 0)
    results.pop(len(results) - 1)
    """results = listaArchivo(path,2)
    results.pop(len(results)-1)
    results.extend(listaArchivo(path,3))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 4))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 5))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 6))
    results.pop(len(results) - 1)"""


    print(len(results))
    clientes = DLinkedList()
    baseDatos = BaseDatos()
    baseDatos.ListaClientes(results)

    inicio(baseDatos)

