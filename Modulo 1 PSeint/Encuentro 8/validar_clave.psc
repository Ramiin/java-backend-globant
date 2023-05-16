//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
//mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
//clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
//correctamente.
Algoritmo validar_clave
    Definir intentos Como Entero
	Definir clave, clave_ingresada como Cadena
    clave <- "eureka"
    intentos <- 3
   Hacer
        Escribir "Ingresa la clave:"
        Leer clave_ingresada
        Si clave_ingresada = clave Entonces
            Escribir "Acceso permitido."
            intentos <- 0
        Sino
            intentos <- intentos - 1
            Si intentos > 0 Entonces
                Escribir "Clave incorrecta. Te quedan ", intentos, " intentos."
            Sino
                Escribir "Has agotado los 3 intentos."
            FinSi
        FinSi
	Mientras Que intentos > 0
FinAlgoritmo

