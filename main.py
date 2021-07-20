import csv
from Logic.base_datos import *


def listaArchivo(path, index):
    with open(path[index]) as archivo_data:
        entrada = csv.reader(archivo_data)
        results = list(entrada)
    return results


def actualizar(baseDatos):
    ident = input("Ingrese la identificación del usuario a actualizar: ")
    while True:
        if baseDatos.existIdentificacion(ident):

            client = baseDatos.search(ident)

            opcion = int(input(
                "\n¿Qué desea actualizarle a este usuario?\n\n1)Nombre\n2)Apellido\n3)Cédula\n4)Correo\n5)Teléfono\n6)Dirección\n7)Contraseña\n8)Volver\n\nOpción ->"))

            if opcion == 1:
                nombre = input("Nuevo nombre -> ")
                client.setNombre(nombre)
            elif opcion == 2:
                apellido = input("Nuevo apellido -> ")
                client.setApellido(apellido)
            elif opcion == 3:
                cedula = input("Nuevo número de cédula -> ")
                client.setIdentificacion(cedula)
            elif opcion == 4:
                correo = input("Nueva dirección de correo electrónico -> ")
                client.setCorreo(correo)
            elif opcion == 5:
                telefono = input("Nuevo número de teléfono -> ")
                client.setTelefono(telefono)
            elif opcion == 6:
                direccion = input("Nueva dirección de vivienda -> ")
                client.setDireccion(direccion)
            elif opcion == 7:
                while True:
                    password = input("Nueva contraseña -> ")
                    confirm_password = input("Confirmar contraseña -> ")
                    if password != confirm_password:
                        print("\n¡Las contraseñas no coninciden!\nAsegurese de escribirlas bien\n")
                    else:
                        client.setPassword(password)
                        break
            elif opcion == 8:
                break

            print("\n¡Actualización exitosa!\n")
        else:
            print("\n!Not Found Client¡\n")
            break


def consultar(baseDatos):
    ident = input("Ingrese la identificación del usuario: ")
    inicio = time.time()
    client = baseDatos.search(ident)
    # print(client)
    fin = time.time()
    # print("Tiempo:", fin - inicio, "segundos")


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
    # print(client)


def loginAdministrador(baseDatos):
    while True:

        print("*******> Menú Administrador <********")
        print("")
        print("1. Consultar")
        print("2. Actualizar")
        print("3. Eliminar")
        print("4. Volver")

        try:
            opcion = input("\nOpción: ")
            if opcion == "1":
                while True:
                    print("\n************> Consultas <************\n")
                    print("1. Buscar Cliente")
                    print("2. Ver toda la lista de clientes")
                    print("3. Ver lista de incidentes")
                    print("4. Volver" + '\n')
                    opcion = int(input("Opción -> "))

                    if opcion == 1:
                        consultar(baseDatos)
                    elif opcion == 2:
                        baseDatos.getLista().__str__()
                    elif opcion == 3:
                        pass
                    elif opcion == 4:
                        break
                    else:
                        print("\n¡Opción inexistente!\n")

            elif opcion == "2":
                print("\n***********> Actualizar <************\n")
                actualizar(baseDatos)

            elif opcion == "3":
                print("\n*******> Menú eliminaciones <********\n")
                eliminar(baseDatos)

            elif opcion == "4":
                break

        except Exception as e:
            print("\nError : Ingrese una opción válida\n")


def inicio(baseDatos):
    listaClientes = baseDatos.getLista()
    # print(baseDatos.search("692918210"))
    while (True):
        try:
            d1 = input(
                "\nBienvenido al portal, ¿Qué desea hacer?\n1)Iniciar sesión\n2)Registrarse\n3)Salir\n\nOpción -> ")
            if d1 == "1":
                while True:
                    usuario_id = input("\nIngrese por favor su identificación: ")
                    if baseDatos.existIdentificacion(usuario_id):
                        start = time.time()
                        cliente = baseDatos.search(usuario_id)
                        # print(cliente)
                        fin = time.time()
                        # print("Tiempo:", fin - start, "segundos")
                        break
                    else:
                        print("!Not Found Client¡\n")
                while True:
                    password = input("\nContraseña: ")
                    if cliente.getPassword() == password:
                        print("\n¡Inicio de sesión exitoso!\n")
                        loginAdministrador(baseDatos)
                        break
                    else:
                        print("\n¡Contraseña Incorrecta!")

            elif d1 == "2":

                print("\nPara registrarse debe ingresar los siguientes datos:\n")
                nombre = input("Nombre -> ")
                apellido = input("Apellido completo -> ")
                while True:
                    cedula = input("Cedula -> ")
                    if baseDatos.existIdentificacion(cedula):
                        print("Error -> !Este usuario se encuentra registrado¡")
                    else:
                        break

                correo = input("Dirección de correo electrónico -> ")
                telefono = input("Numero de teléfono -> ")
                direccion = input("Dirección de vivienda -> ")

                while True:
                    password = input("Contraseña -> ")
                    confirm_password = input("Confirmar contraseña -> ")
                    if password != confirm_password:
                        print("\n¡Las contraseñas no coninciden!\nAsegurese de escribirlas bien\n")
                    else:
                        break

                id_1 = int(baseDatos.getCliente().getId())
                c1 = Cliente(id_1 + 1, nombre, apellido, cedula, correo, password, "12123.jpg", telefono, direccion)
                print("\n¡Registro realizado exitosamente!\n")
                print(c1)
                listaClientes.append(c1)

                # inicio = time.time()
                # fin = time.time()
                # listaClientes.__str__()
                # print("Tiempo:", fin - inicio, "segundos")

            elif d1 == "3":

                print(
                    "\n╱╱╱╱╱╱╭╮\n╱╱╱╱╱╱┃┃\n╭━━╮╭━╯┃╭╮╭━━╮╭━━╮\n┃╭╮┃┃╭╮┃┣┫┃╭╮┃┃━━┫\n┃╭╮┃┃╰╯┃┃┃┃╰╯┃┣━━┃\n╰╯╰╯╰━━╯╰╯╰━━╯╰━━╯")
                break
            else:
                print("Error -> ¡Ingrese una opción válida!")
        except Exception as e:
            print(e, "Error -> ¡Ingrese una opción válida!")


if __name__ == '__main__':
    path = ["./Resources/datamil.csv", "./Resources/data10mil.csv", "./Resources/data50mil.csv",
            "./Resources/data100mil_1.csv",
            "./Resources/data100mil_2.csv", "./Resources/data100mil_3.csv",
            "./Resources/data100mil_4.csv", "./Resources/data100mil_5.csv", "./Resources/data100mil_8.csv",
            "./Resources/", "./Resources/"]

    # 453993804    pass = SzlKfkZOt9LTv5DACfLL  -> 200mil
    # 266943344    pass= fKOCuOa2dxnBsI5hWFcv -> 400mil
    # 91318190    pass= NR6A4w8U3fCDdzX9xC2h -> 600mil  800mil 1millon

    # start = time.time()

    results = []
    results = listaArchivo(path, 0)
    results.pop(len(results) - 1)

    '''results.extend(listaArchivo(path, 2))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path,4))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 4))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 4))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 4))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 4))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 5))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 6))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 7))
    results.pop(len(results) - 1)
    results.extend(listaArchivo(path, 8))
    results.pop(len(results) - 1)'''

    print(len(results))
    baseDatos = BaseDatos()
    baseDatos.ListaClientes(results)

    # end = time.time()
    # print("Execution time: " + str(end - start))

    inicio(baseDatos)
