

Algoritmo guia5_cooperativo
//subprograma inicializarMatriz:
//	Debe recibir como parámetros la matriz a inicializar, la cantidad de filas y la cantidad de columnas.
//	En primera instancia inicializaremos la matriz con un "*" (asterisco) en cada lugar para que la
//		misma no esté vacía y no tengamos problemas.
Definir matriz, n Como caracter	
Dimension  matriz(9,12)
generarmatriz(matriz)
agregarPalabra(matriz,0,"VECTOR")
agregarPalabra(matriz,1,"MATRIX")
agregarPalabra(matriz,2,"PROGRAMA")
agregarPalabra(matriz,3,"SUBPROGRAMA")
agregarPalabra(matriz,4,"SUBPROCESO")
agregarPalabra(matriz,5,"VARIABLE")
agregarPalabra(matriz,6,"ENTERO")
agregarPalabra(matriz,7,"PARA")
agregarPalabra(matriz,8,"MIENTRAS")
imprimirmatriz(matriz)

Definir matrizrecorrida Como Caracter
Dimension matrizrecorrida(9,12)
generarmatriz(matrizrecorrida)
Escribir " "

acomodarPalabra(matriz,matrizrecorrida)
imprimirmatriz(matrizrecorrida)
FinAlgoritmo

SubProceso generarmatriz(matriz)
	Definir i,j Como Entero
	
	para i = 0 Hasta 8 Con Paso 1 Hacer
		para j= 0 Hasta  11 con paso 1 Hacer
			matriz(i,j)= " * "
		FinPara
	FinPara
FinSubProceso


SubProceso imprimirmatriz(matriz)
	Definir i,j Como Entero
	para i = 0 Hasta 8 Con Paso 1 Hacer
		para j = 0 Hasta 11 Con Paso 1 Hacer
			Escribir sin saltar " " matriz(i,j) " "
		FinPara
		Escribir "  "
	FinPara
	FinSubProceso
	
//subprograma agregarPalabra:
//	Se le debe indicar en los parámetros la matriz donde se va a agregar la palabra, la fila en la que se
//	agregará y la propia palabra. Una vez el subprograma reciba eso debe descomponer la palabra y
	//	agregarla a la matriz en la posición deseada.
	
	SubProceso agregarPalabra(matriz, fila, palabra)
		Definir columna Como Entero
		para columna = 0 hasta Longitud(palabra)-1 hacer 
			matriz(fila, columna) = Subcadena(palabra, columna, columna)
		FinPara
FinSubProceso

Funcion lugarder=posicionr(matriz, fila)
	Definir lugarder, i Como Entero
	para i=0 Hasta 11 Con Paso 1 Hacer
		si matriz(fila,i) = "R" Entonces
			lugarder = i
			i=12
		FinSi
	FinPara
FinFuncion

SubProceso acomodarPalabra(matriz, matrizrecorrida)
	Definir i, j, r, espacios, contador Como Entero
	para i = 0 Hasta 8 Con Paso 1 hacer
		r = posicionr(matriz, i)
		espacios = 6 -r-1
		contador = 0
		para j = espacios Hasta 11 Con Paso 1 Hacer 
			matrizrecorrida(i,j)=matriz(i, contador)
			contador=contador+1
		FinPara
	FinPara
	
FinSubProceso








