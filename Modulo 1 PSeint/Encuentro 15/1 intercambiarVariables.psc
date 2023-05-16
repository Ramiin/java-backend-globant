//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.

Algoritmo intercambiarVariables
    Definir A, B Como Entero
    
    Escribir "Ingrese el valor de A:"
    Leer A
    Escribir "Ingrese el valor de B:"
    Leer B
    
    Escribir "Antes del intercambio: A = ", A, " B = ", B
    
    intercambiar(A, B)
    
    Escribir "Después del intercambio: A = ", A, " B = ", B
FinAlgoritmo

SubProceso  intercambiar(A Por Referencia, B Por Referencia )
	Definir temp Como Entero
	
	temp = A
	A = B
	B = temp
FinSubProceso
