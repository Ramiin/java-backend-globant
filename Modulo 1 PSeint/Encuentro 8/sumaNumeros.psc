//Se debe realizar un programa que:
//1o) Pida por teclado un número (entero positivo).
//2o) Pregunte al usuario si desea introducir o no otro número.
//3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//4o) Muestre por pantalla la suma de los números introducidos por el usuario.

Algoritmo sumaNumeros
    Definir respuesta como Caracter
    Definir suma, numero como Entero
    suma <- 0
    Hacer
        Escribir "Ingrese un número:"
        Leer numero
		Si numero < 0 Entonces
			Escribir "Solo se permiten números positivos"
		SiNo
			suma <- suma + numero
		Fin Si
		
        Escribir "¿Desea ingresar otro número? (s/n)"
        Leer respuesta
		respuesta = Minusculas(respuesta)
	Mientras Que respuesta <> "n"
			Escribir "La suma de los números ingresados es: ", suma
FinAlgoritmo
