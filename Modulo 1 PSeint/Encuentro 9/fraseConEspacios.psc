//Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
//espacio entre cada letra. La frase se mostrar� as�: H o l a. Nota: recordar el
//funcionamiento de la funci�n Subcadena().

Algoritmo fraseConEspacios
    Definir frase Como Caracter
    Definir i, long Como Entero
    
    Escribir "Ingrese una frase:"
    Leer frase
    
    long <- Longitud(frase)
    
 	Para i <- 0 Hasta long Hacer
		Escribir Sin Saltar Subcadena(frase, i, i) + " "
	FinPara
FinAlgoritmo

