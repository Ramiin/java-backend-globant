//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//función Subcadena().


Algoritmo ContarLetraEnFrase
    Definir frase, letra Como Cadena
    Definir cantidad Como Entero
	
    Escribir "Ingrese una frase: "
    Leer frase
    Escribir "Ingrese una letra a buscar: "
    Leer letra
	

    cantidad <- ContarLetra(frase, letra)
	

    Escribir "La letra ", letra, " aparece ", cantidad, " veces en la frase ", frase, "."
	
FinAlgoritmo

Funcion resultado <- ContarLetra(frase, letra)
    Definir resultado Como Entero
    Definir pos, long Como Entero	
    resultado <- 0
    long <- Longitud(frase)
	
    Para pos <- 1 Hasta long
        Si Subcadena(frase, pos, pos) = letra Entonces
            resultado <- resultado + 1
        FinSi
    FinPara
FinFuncion
