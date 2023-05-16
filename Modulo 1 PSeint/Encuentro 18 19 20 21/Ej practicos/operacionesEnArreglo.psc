//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//arreglo.

Proceso operacionesEnArreglo
    Definir arreglo, suma, resta, multiplicacion Como Real
	Definir i Como Entero
	Dimension arreglo[10]
	
    suma <- 0
    resta <- 0
    multiplicacion <- 1
    Para i <- 0 Hasta 9 Con Paso 1 Hacer
        Escribir "Ingrese el numero ", i+1, ": "
        Leer arreglo[i]
        suma <- suma + arreglo[i]
        multiplicacion <- multiplicacion * arreglo[i]
		
		resta <- resta - arreglo[i]
		
    FinPara
    Escribir "La suma de los numeros ingresados es: ", suma
    Escribir "La resta de los numeros ingresados es: ", resta
    Escribir "La multiplicacion de los numeros ingresados es: ", multiplicacion
FinProceso
