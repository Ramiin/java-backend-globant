//Una empresa de venta de productos por correo desea realizar una estadística de las 
//ventas realizadas de cada uno de sus productos a lo largo de una 
//semana. Distribuya luego 5 productos en los 5 días hábiles de la
//semana.

//SUBPROGRAMAS

//Subprograma que obtiene el total de ventas por vendedor
SubProceso datoXVendedor(matriz Por Referencia, j Por Referencia, vendedor Por Valor, total Por Referencia)
	total = 0
	Segun vendedor Hacer
		1:
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				total = total + matriz[0,j]
			Fin Para
		2:
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				total = total + matriz[1,j]
			Fin Para
		3:
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				total = total + matriz[2,j]
			Fin Para
		4:
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				total = total + matriz[3,j]
			Fin Para
		De Otro Modo:
			Escribir "No hay vendedor asignado"
	Fin Segun
FinSubProceso

//Subprograma que obtiene el total de ventas por zona
SubProceso datoXZona(matriz Por Referencia, i Por Referencia, zona Por Valor, total Por Referencia)
	total = 0
	Segun zona Hacer
		"NORTE":
			Para i<-0 Hasta 3 Con Paso 1 Hacer
				total = total + matriz[i,0]
			Fin Para
		"SUR":
			Para i<-0 Hasta 3 Con Paso 1 Hacer
				total = total + matriz[i,1]
			Fin Para
		"ESTE":
			Para i<-0 Hasta 3 Con Paso 1 Hacer
				total = total + matriz[i,2]
			Fin Para
		"OESTE":
			Para i<-0 Hasta 3 Con Paso 1 Hacer
				total = total + matriz[i,3]
			Fin Para
		"CENTRO":
			Para i<-0 Hasta 3 Con Paso 1 Hacer
				total = total + matriz[i,4]
			Fin Para
		De Otro Modo:
			Escribir "No hay zona"
	Fin Segun
	
FinSubProceso

//Subprograma imprime la matriz
SubProceso imprimirMatriz(matriz Por Referencia, i Por Referencia, j Por Referencia, totalGeneral Por Referencia)
	Escribir Sin Saltar "                   "
	Escribir "Norte     Sur       Este     Oeste     Centro" 
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			totalGeneral = totalGeneral + matriz[i,j]
			Si j = 0 Entonces
				Si i = 0 Entonces
					Escribir Sin Saltar "Representante 1 "
				SiNo
					Si i = 1 Entonces
						Escribir Sin Saltar "Representante 2 "
					SiNo
						Si i = 2 Entonces
							Escribir Sin Saltar "Representante 3 "
						SiNo
							Si i = 3 Entonces
								Escribir Sin Saltar "Representante 4 "
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
			
			Si Longitud(ConvertirATexto(matriz[i,j])) = 1 Entonces
				Escribir Sin Saltar "|   0" matriz[i,j] "   |"
			SiNo
				Escribir Sin Saltar "|   " matriz[i,j] "   |"
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso

//Subprograma que rellena una matriz
SubProceso llenarMatriz(matriz Por Referencia, i Por Referencia, j Por Referencia)
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			matriz[i,j] = Aleatorio(1,100)
		Fin Para
	Fin Para
FinSubProceso

Algoritmo ej_extra_8
	
	//Definimos variables y matriz
	Definir matriz, i, j, vendedor, total, totalGeneral Como Entero
	Definir zona Como Caracter
	
	//Determinamos la dimension de la matriz
	Dimension matriz[4, 5]
	
	//Inicializamos variables
	vendedor = 0
	totalGeneral = 0
	zona = ""
	
	//Llamamos el subprograma para llenar la matriz
	llenarMatriz(matriz, i, j)
	
	//Solicitamos información al usuario
	//Solicitamos la zona que se desea obtener la información
	Repetir
		Escribir "Favor ingresar la zona que desea obtener información"
		Leer zona
		zona = Mayusculas(zona)
	Mientras Que zona <> "NORTE" Y zona <> "SUR" Y zona <> "ESTE" Y zona <> "OESTE" Y zona <> "CENTRO"
	
	//Solicitamos el vendedor al que se desea obtener la información de ventas
	Repetir
		Escribir "Favor ingresar el número de vendedor del cual desea obtener información (1,2,3 o 4)"
		Leer vendedor
	Mientras Que vendedor <> 1 Y vendedor <> 2 Y vendedor <> 3 Y vendedor <> 4
	
	//Devolvemos la información al usuario
	//Imprimimos matriz
	Escribir "Cuadro ventas por zona"
	imprimirMatriz(matriz, i, j, totalGeneral)
	
	//Buscamos el total de ventas de una zona
	datoXZona(matriz, i, zona, total)
	Escribir ""
	Escribir "Total de ventas de la zona " zona " es: " total
	
	//Buscamos el total de ventas de un vendedor en concreto
	datoXVendedor(matriz, j, vendedor, total)
	Escribir ""
	Escribir "Total de ventas del vendedor #" vendedor " es: " total
	
	//Total de ventas general
	Escribir ""
	Escribir "Total de ventas general es:" totalGeneral
FinAlgoritmo
