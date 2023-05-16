//Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//programa pedirá el número de días que se van a introducir.

Algoritmo calcularTemperaturaMedia
Definir n, i Como Entero
Definir temperaturaMax, temperaturaMin, temperaturaMedia Como Real

   Escribir "Ingrese el número de días:"
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Día #" i " --------------------------------------------"
        Escribir "Ingrese la temperatura máxima:"
        Leer temperaturaMax
        Escribir "Ingrese la temperatura mínima:"
        Leer temperaturaMin
		
		calcularMedia(temperaturaMin, temperaturaMax, temperaturaMedia)
        Escribir "La temperatura media del día " i " es: ", temperaturaMedia
    FinPara
	
FinAlgoritmo

SubProceso  calcularMedia(tempMax, tempMin, temperaturaMedia Por Referencia)
temperaturaMedia = ((tempMax + tempMin)/2)
FinSubProceso

