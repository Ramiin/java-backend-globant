//Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//programa pedir� el n�mero de d�as que se van a introducir.

Algoritmo calcularTemperaturaMedia
Definir n, i Como Entero
Definir temperaturaMax, temperaturaMin, temperaturaMedia Como Real

   Escribir "Ingrese el n�mero de d�as:"
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "D�a #" i " --------------------------------------------"
        Escribir "Ingrese la temperatura m�xima:"
        Leer temperaturaMax
        Escribir "Ingrese la temperatura m�nima:"
        Leer temperaturaMin
		
		calcularMedia(temperaturaMin, temperaturaMax, temperaturaMedia)
        Escribir "La temperatura media del d�a " i " es: ", temperaturaMedia
    FinPara
	
FinAlgoritmo

SubProceso  calcularMedia(tempMax, tempMin, temperaturaMedia Por Referencia)
temperaturaMedia = ((tempMax + tempMin)/2)
FinSubProceso

