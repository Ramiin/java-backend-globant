//Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
//mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no
//le debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a
//4567. El programa finaliza cuando ingresa los datos correctos.

Algoritmo ValidarUsuario
	
	Definir codigo, contrasena como Entero
	
	Hacer
		Escribir "Ingrese su codigo de usuario:"
		Leer codigo
		
		Escribir "Ingrese su contrasena numerica:"
		Leer contrasena
		
		Si codigo == 1024 y contrasena == 4567 Entonces
			Escribir "Datos correctos. Bienvenido!"
		Sino
			Escribir "Codigo o contrasena incorrectos. Intente nuevamente."
		FinSi
	Mientras Que codigo <> 1024 O contrasena <> 4567
		
FinAlgoritmo
