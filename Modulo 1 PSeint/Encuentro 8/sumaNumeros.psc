//Se debe realizar un programa que:
//1o) Pida por teclado un n�mero (entero positivo).
//2o) Pregunte al usuario si desea introducir o no otro n�mero.
//3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//4o) Muestre por pantalla la suma de los n�meros introducidos por el usuario.

Algoritmo sumaNumeros
    Definir respuesta como Caracter
    Definir suma, numero como Entero
    suma <- 0
    Hacer
        Escribir "Ingrese un n�mero:"
        Leer numero
		Si numero < 0 Entonces
			Escribir "Solo se permiten n�meros positivos"
		SiNo
			suma <- suma + numero
		Fin Si
		
        Escribir "�Desea ingresar otro n�mero? (s/n)"
        Leer respuesta
		respuesta = Minusculas(respuesta)
	Mientras Que respuesta <> "n"
			Escribir "La suma de los n�meros ingresados es: ", suma
FinAlgoritmo
