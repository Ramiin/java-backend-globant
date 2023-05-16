Algoritmo LoginUser
    Definir nombreUsuario, contrasena Como Cadena
    Definir intentos Como Entero
    Definir resultado Como Logico
	
    intentos <- 0
    resultado <- Falso
	//Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
	//devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd".
	//Además, la función calculara el número de intentos que se ha usado para loguearse, tenemos
	//solo 3 intentos, si nos quedamos sin intentos la función devolverá Falso.
	
    Repetir
        Escribir "Ingrese el nombre de usuario: "
        Leer nombreUsuario
		
        Escribir "Ingrese la contraseña: "
        Leer contrasena
		
        resultado <- Login(nombreUsuario, contrasena)
        intentos <- intentos + 1
		
        Si resultado = Falso Entonces
            Escribir "Nombre de usuario o contraseña incorrectos. Intentos restantes: ", 3 - intentos
        FinSi
    Hasta Que (resultado = Verdadero) O (intentos = 3)
	
    Si resultado = Verdadero Entonces
        Escribir "Inicio de sesión exitoso."
    Sino
        Escribir "Se ha alcanzado el límite de intentos. Inicio de sesión fallido."
    FinSi
	
FinAlgoritmo

// Función para validar el nombre de usuario y la contraseña
Funcion resultado <- Login(nombreUsuario, contrasena)
    Definir resultado Como Logico
	
    Si (nombreUsuario = "usuario1") Y (contrasena = "asdasd") Entonces
        resultado <- Verdadero
    Sino
        resultado <- Falso
    FinSi
	
FinFuncion
