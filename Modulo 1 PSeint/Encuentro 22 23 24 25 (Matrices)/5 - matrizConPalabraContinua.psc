//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//Nota: recordar el uso de la función Subcadena().


Algoritmo matrizConPalabraContinua
	Definir matriz Como Caracter
    Dimension matriz[3, 3]
    Definir palabra Como Caracter
    Definir i, j, k Como Entero
    
	Hacer
		Escribir "Ingrese una palabra de 9 caracteres:"
		Leer palabra
	Mientras Que Longitud(palabra) <> 9

    
    Para i = 0 Hasta 2 Hacer
        Para j = 0 Hasta 2 Hacer
            k = i * 3 + j
            Si k < Longitud(palabra) Entonces
                matriz[i, j] = Subcadena(palabra, k, k)
            Sino
                matriz[i, j] = " "
            FinSi
        FinPara
    FinPara
    
    Para i = 0 Hasta 2 Hacer
        Para j = 0 Hasta 2 Hacer
            Escribir SinSaltar matriz[i, j]
        FinPara
        Escribir ""
    FinPara
    
FinAlgoritmo
