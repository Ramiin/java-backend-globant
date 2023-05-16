Algoritmo llenarMarcoMatriz
	Definir matriz, i, j como Entero
	
Dimension matriz[5,15]
 
    Para i = 0 Hasta 4 Hacer
        matriz[i, 0] = 1
        matriz[i, 14] = 1
    FinPara
    Para j = 1 Hasta 14 Hacer
        matriz[0, j] = 1
        matriz[4, j] = 1
    FinPara
    

    Para i = 1 Hasta 3 Hacer
        Para j = 1 Hasta 13 Hacer
            matriz[i, j] = 0
        FinPara
    FinPara
    

    Para i = 0 Hasta 4 Hacer
        Para j = 0 Hasta 14 Hacer
			Escribir Sin Saltar  "[" matriz[i,j] "]"
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo

