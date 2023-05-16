//Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
//todos ellos.

Algoritmo max_min_promedio_hmq
	Definir numero, numeroMaximo, numeroMinimo, suma, cantidad como Entero
	Definir promedio como Real
	numeroMaximo = 0
	numeroMinimo = 0
	suma = 0
	cantidad = 0
	
	Hacer
		Escribir "Ingrese un número entero (0 para finalizar):"
		Leer numero
		Si cantidad == 0 entonces
			numeroMaximo = numero
			numeroMinimo = numero
		FinSi
		Si numero > 0 entonces
			Si numero > numeroMaximo entonces
				numeroMaximo = numero
			FinSi
			Si numero < numeroMinimo entonces
				numeroMinimo = numero
			FinSi
			suma = suma + numero
			cantidad = cantidad + 1
		FinSi
	Mientras Que numero <> 0
			
			Si cantidad > 0 entonces
				promedio = suma / cantidad
				Escribir "El número máximo es: ", numeroMaximo
				Escribir "El número mínimo es: ", numeroMinimo
				Escribir "El promedio es: ", promedio
			Sino
				Escribir "No se ingresaron números válidos"
			FinSi
			
FinAlgoritmo

