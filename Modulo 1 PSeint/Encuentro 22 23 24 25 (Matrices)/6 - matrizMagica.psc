//Una matriz m�gica es una matriz cuadrada (tiene igual n�mero de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2  7  6
//	9  5  1
//	4  3  8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es m�gica o no, y en caso de que
//	sea m�gica escribir la suma. Adem�s, el programa deber� comprobar que los n�meros
//	introducidos son correctos, es decir, est�n entre el 1 y el 9. El usuario ingresa el tama�o de la
//	matriz que no debe superar orden igual a 10.

Algoritmo matrizMagica
    Definir n, i, j, sumaDiagonal1, sumaDiagonal2, sumaFila, sumaColumna Como Entero
    Definir matriz Como Entero 
    Definir esMagica Como Logico
	
    Escribir "Ingrese el tama�o de la matriz: "
    Leer n
	Dimension matriz[n,n]
	
    Para i = 0 Hasta n-1 Hacer
        Para j = 0 Hasta n-1 Hacer
            Escribir "Ingrese el valor para la posici�n [", i, ",", j, "]: "
            Leer matriz[i,j]
            Mientras matriz[i,j] < 1 O matriz[i,j] > 9 Hacer
                Escribir "El valor debe estar entre 1 y 9. Ingrese un valor v�lido para la posici�n [", i, ",", j, "]: "
                Leer matriz[i,j]
            FinMientras
        FinPara
    FinPara
	
    esMagica = Verdadero
    sumaDiagonal1 = 0
    sumaDiagonal2 = 0
	
    Para i = 0 Hasta n-1 Hacer
        sumaFila = 0
        sumaColumna = 0
        sumaDiagonal1 = sumaDiagonal1 + matriz[i,i]
        sumaDiagonal2 = sumaDiagonal2 + matriz[i,n-i-1]
		
        Para j = 0 Hasta n-1 Hacer
            sumaFila = sumaFila + matriz[i,j]
            sumaColumna = sumaColumna + matriz[j,i]
        FinPara
		
        Si sumaFila <> sumaColumna Entonces
            esMagica = Falso
        FinSi
    FinPara
	
    Si sumaDiagonal1 <> sumaDiagonal2 O sumaDiagonal1 <> sumaFila Entonces
        esMagica = Falso
    FinSi
	
    Si esMagica Entonces
        Escribir "La matriz es m�gica. La suma es ", sumaFila, "."
    Sino
        Escribir "La matriz no es m�gica."
    FinSi
FinAlgoritmo
