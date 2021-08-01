import csv
from datetime import date, time, datetime
import time

from DATA.Administrador import Administrador
from DATA.Cliente import Cliente
from DATA.Incidente import Incidente
from Logic.AdministradorDAO import AdministradorDAO
from Logic.ClienteDAO import ClienteDAO
from Logic.IncidenteDAO import IncidenteDAO


def listaArchivo(path, index):
    with open(path[index]) as archivo_data:
        entrada = csv.reader(archivo_data)
        results = list(entrada)
    return results

def actualizar(baseDatos):
    ident = input("Ingrese la identificación del usuario a actualizar: ")
    while True:
        if baseDatos.existIdentificacion(ident):

            client = baseDatos.searchID(baseDatos.getRoot(),ident)

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
    client = baseDatos.searchID(baseDatos.getRoot(),ident)
    fin = time.time()
    print(client)
    #print("Tiempo:", fin - inicio, "segundos")

def eliminar(baseDatos):
    ident = input("Ingrese la identificación del usuario: ")
    client = baseDatos.searchID(baseDatos.getRoot(),ident)
    print(client)
    inicio = time.time()
    baseDatos.delete(baseDatos.getRoot(),ident)
    fin = time.time()
    print("Eliminado con exitó")
    #print("Tiempo:", fin - inicio, "segundos")

def loginCliente(baseAdmin,baseClient, baseIncident,idCliente):
    while True:
        print("*******> Menú Cliente <********")
        print("")
        print("1. Consultar")
        print("2. Crear Incidente")
        print("3. Actualizar Datos")
        print("4. Volver")
        try:
            opcion = input("\nOpción: ")
            if opcion == "1":
                while True:
                    print("\n************> Consultas <************\n")
                    print("1. Ver lista de incidentes")
                    print("2. Volver" + '\n')
                    opcion = int(input("Opción -> "))

                    if opcion == 1:
                        baseIncident.obtenerIncidente(idCliente)
                    elif opcion == 2:
                        break
                    else:
                        print("\n¡Opción inexistente!\n")
            elif opcion == "2":
                print("\n***********> Crear Incidente <************\n")
                fecha = datetime.now()
                print("Ingrese la descripcion del incidente: ")
                descripcion = input()
                print("Ingrese la dirección del incidente: ")
                direccion = baseClient.searchID(baseClient.getRoot(),idCliente).getDireccion()
                incidente = Incidente(baseIncident.getIdIncremental(),descripcion,direccion,fecha.strftime('%d/%m/%Y %H:%M:%S'),idCliente)
                baseIncident.insertar(incidente)
                print(incidente)

            elif opcion == "3":
                print("\n***********> Actualizar <************\n")
                actualizar(baseClient)

            elif opcion == "4":
                inicio(baseAdmin,baseClient,baseIncident)


        except Exception as e:
            print("\nError : Ingrese una opción válida\n")

def loginAdministrador(baseAdmin, baseClient, baseIncident):
    while True:

        print("*******> Menú Administrador <********")
        print("")
        print("1. Consultar")
        print("2. Actualizar datos")
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
                        consultar(baseClient)
                    elif opcion == 2:
                        inicio = time.time()
                        baseClient.__str__(baseClient.getRoot(),"",True)
                        fin = time.time()
                        #print("Tiempo:", fin - inicio, "segundos")
                    elif opcion == 3:
                        baseIncident.__str__(baseIncident.getRoot(),"",True)
                    elif opcion == 4:
                        break
                    else:
                        print("\n¡Opción inexistente!\n")

            elif opcion == "2":
                print("\n***********> Actualizar <************\n")
                actualizar(baseAdmin)

            elif opcion == "3":
                print("\n*******> Menú eliminar <********\n")

                eliminar(baseClient)

            elif opcion == "4":
                #inicio(baseAdmin,baseClient,baseIncident)
                break

        except Exception as e:
            print("\nError : Ingrese una opción válida\n")

def inicio(baseAdmin, baseClient, baseIncident):
    roll = True
    while (True):
        try:
            d1 = input(
                "\nBienvenido al portal, ¿Qué desea hacer?\n1)Iniciar sesión\n2)Registrarse\n3)Salir\n\nOpción -> ")
            if d1 == "1":
                while True:
                    usuario_id = input("\nIngrese por favor su identificación: ")
                    #print(baseClient.existIdentificacion(usuario_id))
                    if (baseAdmin.existIdentificacion(usuario_id)):
                        admin = baseAdmin.searchID(baseAdmin.getRoot(),usuario_id)
                        #print("Administrador")
                        #print(admin)
                        roll = True

                    elif(baseClient.existIdentificacion(usuario_id)):
                        start = time.time()
                        cliente = baseClient.searchID(baseClient.getRoot(),usuario_id)
                        # print(cliente)
                        #print("Cliente")
                        fin = time.time()
                        # print("Tiempo:", fin - start, "segundos")
                        roll = False
                        break
                    else:
                        print("!Not Found Client¡\n")
                    break
                while True:
                    password = input("\nContraseña: ")
                    if(roll):
                        if admin.getPassword() == password:
                            print("\n¡Inicio de sesión exitoso!\n")
                            loginAdministrador(baseAdmin,baseClient,baseIncident)
                            break
                        else:
                            print("\n¡Contraseña Incorrecta!")
                    else:
                        #CLIENTE
                        if cliente.getPassword() == password:
                            print("\n¡Inicio de sesión exitoso!\n")
                            loginCliente(baseAdmin,baseClient,baseIncident,usuario_id)
                            break
                        else:
                            print("\n¡Contraseña Incorrecta!")

            elif d1 == "2":

                print("\nPara registrarse debe ingresar los siguientes datos:\n")
                while True:
                    roll = input("Roll: Escriba [A] para Administrador ó Escriba [C] para Cliente -> ")
                    if(roll == 'A' or roll == 'C'):
                        nombre = input("Nombre -> ")
                        apellido = input("Apellido completo -> ")
                        while True:
                            cedula = input("Cedula -> ")
                            if baseAdmin.existIdentificacion(cedula):
                                print("Error -> !Este usuario se encuentra registrado¡")
                            elif baseClient.existIdentificacion(cedula):
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
                        if(roll == 'A'):
                            admin = Administrador(baseAdmin.getIdIncremental(),nombre,apellido,cedula,correo,password,"",telefono,direccion)
                            baseAdmin.insertarAdmin(admin)
                            print("\n¡Registro realizado exitosamente!\n")
                            print(admin)
                            break
                        # inicio = time.time()
                        # fin = time.time()
                        # listaClientes.__str__()
                        # print("Tiempo:", fin - inicio, "segundos")
                    else:
                        print("Seleccione una ópción válida")

            elif d1 == "3":

                print(
                    "\n╱╱╱╱╱╱╭╮\n╱╱╱╱╱╱┃┃\n╭━━╮╭━╯┃╭╮╭━━╮╭━━╮\n┃╭╮┃┃╭╮┃┣┫┃╭╮┃┃━━┫\n┃╭╮┃┃╰╯┃┃┃┃╰╯┃┣━━┃\n╰╯╰╯╰━━╯╰╯╰━━╯╰━━╯")
                break
            else:
                print("Error -> ¡Ingrese una opción válida!")
        except Exception as e:
            print("Error -> ¡Ingrese una opción válida!")


if __name__ == '__main__':
    pathClientes = ["./Resources/Data_Cliente/datamil.csv", "./Resources/Data_Cliente/data10mil.csv", "./Resources/Data_Cliente/data50mil.csv",
            "./Resources/Data_Cliente/data100mil_1.csv",
            "./Resources/Data_Cliente/data100mil_2.csv", "./Resources/Data_Cliente/data100mil_3.csv",
            "./Resources/Data_Cliente/data100mil_4.csv", "./Resources/Data_Cliente/data100mil_5.csv", "./Resources/Data_Cliente/data100mil_8.csv"]

    pathAdmin = ["./Resources/Data_Administrador/datamil.csv"]

    #Cliente1: 179088036 pass: FwNlH4nPtViaR4jecJOL
    #Cliente2: 82314933 pass: wDo5VnIELVwsccyiMIEL

    #Administrador: 753710276 pass: jhmWonudFSeR1MqH8uAP

    resultsClientes = []
    resultsClientes = listaArchivo(pathClientes, 1)
    resultsClientes.pop(0)
    lent = len(resultsClientes)
    resultsClientes.pop(len(resultsClientes) - 1)




    resultsAdmin = []
    resultsAdmin = listaArchivo(pathAdmin, 0)
    resultsAdmin.pop(0)
    resultsAdmin.pop(len(resultsAdmin) - 1)


    '''resultsClientes.extend(listaArchivo(path, 2))
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

    print("")
    d = datetime.now()
    print(d.strftime('%d/%m/%Y %H:%M:%S'))
    baseAdministrador = AdministradorDAO()
    baseCliente = ClienteDAO()
    baseIncidente = IncidenteDAO()

    baseAdministrador.crearAVL(resultsAdmin)
    baseCliente.crearAVL(resultsClientes)
    inicio(baseAdministrador,baseCliente,baseIncidente)
