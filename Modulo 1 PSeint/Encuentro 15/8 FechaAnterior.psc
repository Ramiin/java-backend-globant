//Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

		
Algoritmo FechaAnterior
				Definir dia, mes, anio Como Entero
				
				Escribir "Ingrese una fecha (dd/mm/aaaa):"
				Leer dia, mes, anio
				
				diaAnterior(dia, mes, anio)
				
				Escribir "La fecha anterior es: ", dia, "/", mes, "/", anio
FinAlgoritmo

SubProceso  diaAnterior(dia Por Referencia, mes Por Referencia, anio Por Referencia)
	Si dia > 1 Entonces
		dia = dia - 1
	Sino
		Si mes > 1 Entonces
			mes = mes - 1
			dia = 31
			Si mes = 2 Entonces
				Si anio % 4 = 0 Entonces
					dia = 29
				Sino
					dia = 28
				FinSi
			Sino
				Si mes = 4 O mes = 6 O mes = 9 O mes = 11 Entonces
					dia = 30
				FinSi
			FinSi
		Sino
			anio = anio - 1
			mes = 12
			dia = 31
		FinSi
	FinSi
FinSubProceso