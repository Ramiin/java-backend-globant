//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.

Algoritmo llenarVector
	Definir vector, i Como Entero
	
	Dimension vector[5]
    Escribir "Ingrese 5 valores:"
    Para i<-0 Hasta 4 Con Paso 1 Hacer
        Leer vector[i]
    FinPara
    Escribir "Los valores ingresados son:"
    Para i<-0 Hasta 4 Con Paso 1 Hacer
        Escribir vector[i]
    FinPara
FinAlgoritmo

