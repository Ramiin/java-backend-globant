//Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
//pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
//deberemos mostrar a l o H.

Algoritmo cadenaReverse
	Definir cadena Como Caracter
	Definir caracteres Como Entero
	Definir i Como Entero
	
	Escribir "Ingrese una cadena:"
	Leer cadena
	
	caracteres = Longitud(cadena)
	
	Para i = caracteres hasta 0 Con Paso -1 hacer
		Escribir sin saltar Subcadena(cadena, i, i), " "
	FinPara
FinAlgoritmo

