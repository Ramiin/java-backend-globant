Algoritmo LoginUser
    Definir nombreUsuario, contrasena Como Cadena
    Definir intentos Como Entero
    Definir resultado Como Logico
	
    intentos <- 0
    resultado <- Falso
	//Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
	//devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
	//Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos
	//solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.
	
    Repetir
        Escribir "Ingrese el nombre de usuario: "
        Leer nombreUsuario
		
        Escribir "Ingrese la contrase�a: "
        Leer contrasena
		
        resultado <- Login(nombreUsuario, contrasena)
        intentos <- intentos + 1
		
        Si resultado = Falso Entonces
            Escribir "Nombre de usuario o contrase�a incorrectos. Intentos restantes: ", 3 - intentos
        FinSi
    Hasta Que (resultado = Verdadero) O (intentos = 3)
	
    Si resultado = Verdadero Entonces
        Escribir "Inicio de sesi�n exitoso."
    Sino
        Escribir "Se ha alcanzado el l�mite de intentos. Inicio de sesi�n fallido."
    FinSi
	
FinAlgoritmo

// Funci�n para validar el nombre de usuario y la contrase�a
Funcion resultado <- Login(nombreUsuario, contrasena)
    Definir resultado Como Logico
	
    Si (nombreUsuario = "usuario1") Y (contrasena = "asdasd") Entonces
        resultado <- Verdadero
    Sino
        resultado <- Falso
    FinSi
	
FinFuncion
