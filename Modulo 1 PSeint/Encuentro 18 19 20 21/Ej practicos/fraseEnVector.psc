//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.

Algoritmo fraseEnVector
	Definir i, pos Como Entero
	Definir frase como cadena
	Definir vectorFrase, letraGuardar Como Caracter
	Dimension vectorFrase[20]
	
	Escribir "Ingrese una frase:"
	Leer frase
	
	Para i<-0 Hasta Longitud(frase)-1 Hacer
		vectorFrase[i] <- Subcadena(frase,i,i)
	FinPara
	
	Escribir "El vector con la frase es:"
	Para i<-0 Hasta Longitud(frase)-1 Con Paso 1 Hacer
		Escribir Sin Saltar vectorFrase[i], ', '
	FinPara
	Escribir ""
	
	Escribir "Ingrese un caracter a guardar:"
	Leer letraGuardar
	
	Escribir "Ingrese una posición para el caracter:"
	Leer pos
	
	Si vectorFrase[pos] = " " O vectorFrase[pos] = "" Entonces
		vectorFrase[pos] <- letraGuardar
		Escribir "El vector con el caracter ingresado es:"
		Para i<-0 Hasta Longitud(frase)-1 Con Paso 1 Hacer
			Escribir Sin Saltar vectorFrase[i]
		FinPara
	Sino
		Escribir "La posición indicada está ocupada. con la letra: " vectorFrase[pos]
	FinSi
	
FinAlgoritmo
