//Una empresa de venta de productos por correo desea realizar una estadística de las 
//ventas realizadas de cada uno de sus productos a lo largo de una 
//semana. Distribuya luego 5 productos en los 5 días hábiles de la
//semana.

//SUBPROGRAMAS

//SubProceso que busca el producto más vendido, el día y la cantidad
SubProceso buscarNdC(matriz Por Referencia, i Por Referencia, j Por Referencia, dato Por Referencia, datoDos Por Referencia, k Por Referencia, l Por Referencia)
	dato = matriz[0,0]
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			datoDos = matriz[i,j]
			Si datoDos >= dato Entonces
				dato = datoDos
				k = i
				l = j
			Fin Si
		Fin Para
	Fin Para
FinSubProceso


//Subprograma que busca el producto más vendido del día
SubProceso buscarMasVendido(matriz Por Referencia, matrizMasVen Por Referencia, i Por Referencia, j Por Referencia, dato Por Referencia, datoDos Por Referencia, k Por Referencia)
	datoDos = matriz[0,0]
	k = 0
	Mientras k < 6 Hacer
		Para j<-0 Hasta 5 Con Paso 1 Hacer
			datoDos  = matriz[0,k]
			Para i<-0 Hasta 4 Con Paso 1 Hacer
				dato = matriz[i,j]
				Si dato >= datoDos Entonces
					datoDos = dato
					Segun i Hacer
						0:
							matrizMasVen[0,k] = "Pro_1"
						1:
							matrizMasVen[0,k] = "Pro_2"
						2:
							matrizMasVen[0,k] = "Pro_3"
						3:
							matrizMasVen[0,k] = "Pro_4"
						4:
							matrizMasVen[0,k] = "Pro_5"
						De Otro Modo:
							Escribir "Nada"
					Fin Segun
				SiNo
				Fin Si
			Fin Para
			k = k + 1
		Fin Para
	Fin Mientras
FinSubProceso

//Subprograma imprime la matriz
SubProceso imprimirMatriz(matriz Por Referencia, matrizMasVen Por Referencia, i Por Referencia, j Por Referencia, k Por Referencia, l Por Referencia)
	Escribir "             Lunes     Martes    Miérco    Jueves    Viernes   Tot Prod" 
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Para j<-0 Hasta 6 Con Paso 1 Hacer
			Si j = 0 Entonces
				Si i = 0 Entonces
					Escribir Sin Saltar "Producto 1  "
				SiNo
					Si i = 1 Entonces
						Escribir Sin Saltar "Producto 2  "
					SiNo
						Si i = 2 Entonces
							Escribir Sin Saltar "Producto 3  "
						SiNo
							Si i = 3 Entonces
								Escribir Sin Saltar "Producto 4  "
							SiNo
								Si i = 4 Entonces
									Escribir Sin Saltar "Producto 5  "
								SiNo
									Si i = 5 Entonces
										Escribir Sin Saltar "Total Semana"
									SiNo
										Si i = 6 Entonces
											Escribir Sin Saltar "Pr + vendido"
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
			
			Si i < 6 Y j < 6 Entonces
				Si Longitud(ConvertirATexto(matriz[i,j])) = 2 Entonces
					Escribir Sin Saltar "|  " matriz[i,j] "    |"
				SiNo
					Si Longitud(ConvertirATexto(matriz[i,j])) = 3 Entonces
						Escribir Sin Saltar "| " matriz[i,j] "    |"
					SiNo
						Escribir Sin Saltar "| " matriz[i,j] "   |"
					Fin Si
				Fin Si
			Fin Si
		Fin Para
		Si i = 6 Entonces
			Para k<-0 Hasta 0 Con Paso 1 Hacer
				Para l<-0 Hasta 5 Con Paso 1 Hacer
					Escribir Sin Saltar "| " matrizMasVen[k,l] "  |"
				Fin Para
			Fin Para
		Fin Si
		Escribir ""
	Fin Para
	
	
FinSubProceso

//Subprograma que rellena una matriz 5 x 15 con 1 y 0
SubProceso llenarMatriz(matriz Por Referencia, i Por Referencia, j Por Referencia, k Por Referencia, suma Por Referencia)
	suma = 0
	Para i<-0 Hasta 5 Con Paso 1 Hacer
		suma = 0
		Para j<-0 Hasta 5 Con Paso 1 Hacer
			Si j = 5 Entonces
				Para k<-0 Hasta 4 Con Paso 1 Hacer
					suma = suma + matriz[i,k]
				Fin Para
				matriz[i,j] = suma
			SiNo
				matriz[i,j] = Aleatorio(10,99)
			Fin Si
		Fin Para
	Fin Para
	
	
	Para j<-0 Hasta 5 Con Paso 1 Hacer
		suma = 0
		Para k<-0 Hasta 4 Con Paso 1 Hacer
			suma = suma + matriz[k,j]
		Fin Para
		matriz[5,j] = suma
	Fin Para
	
	
FinSubProceso

Algoritmo ej_extra_7
	
	//Definimos variables y matriz
	Definir matriz, i, j, k, l, dato, datoDos, suma Como Entero
	Definir matrizMasVen, nombre, dia Como Caracter
	
	//Determinamos la dimension de la matriz
	Dimension matriz[6, 6]
	Dimension matrizMasVen[1,6]
	
	//Inicializamos variables
	dato = 0
	datoDos = 0
	dia = ""
	nombre = ""
	
	//Llamamos el subprograma para llenar la matriz
	llenarMatriz(matriz, i, j, k, suma)
	
	buscarMasVendido(matriz, matrizMasVen, i, j, dato, datoDos, k)
	
	//Devolvemos la información al usuario
	Escribir ""
	Escribir "Matriz"
	//imprimirMatriz(matriz, i, j)
	imprimirMatriz(matriz, matrizMasVen,i, j, k, l)
	Escribir ""
	
	Escribir "El producto más vendido de la semana es: " matrizMasVen[0,5]
	Escribir ""
	
	buscarNdC(matriz, i, j, dato, datoDos, k, l)
	
	Segun l Hacer
		0:
			dia = "lunes"
		1:
			dia = "martes"
		2:
			dia = "miércoles"
		3:
			dia = "jueves"
		4:
			dia = "viernes"
		De Otro Modo:
			dia = "Nada"
	Fin Segun
	
	Segun k Hacer
		0:
			nombre = "#1"
		1:
			nombre = "#2"
		2:
			nombre = "#3"
		4:
			nombre = "#4"
		5:
			nombre = "#5"
		De Otro Modo:
			nombre = "Nada"
	Fin Segun
	
	Escribir "El producto " nombre ", se vendio más el día " dia " por una cantidad de: " dato 
	//Escribir ""
	
//	Para i<-0 Hasta 5 Con Paso 1 Hacer
//		Para j<-0 Hasta 5 Con Paso 1 Hacer
//			Escribir Sin Saltar matriz[i,j] "  "
//		Fin Para
//		Escribir ""
//	Fin Para
	
	
FinAlgoritmo
