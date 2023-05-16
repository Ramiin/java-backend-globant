//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//(incluyendo a las vocales acentuadas) se mantienen sin cambios.

//a e i o u
//@ # $ % *
	
//Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//correspondiente. Utilice la estructura "según" para la transformación.
//Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.

Algoritmo codificarSecuenciaCaracteres
    Definir secuencia, codificacion Como Caracter
    Escribir "Ingrese una secuencia de caracteres (terminada en punto):"
    Leer secuencia
	
   codificar(Minusculas(secuencia), codificacion)
    Escribir "La secuencia codificada es:", codificacion
FinAlgoritmo


SubProceso codificar(secuencia, codificacion Por Referencia)
	Definir i Como Entero
	Definir caracterActual Como Caracter
		codificacion = ""
		Para i = 0 Hasta Longitud(secuencia) Hacer
			caracterActual = SubCadena(secuencia, i, i)
			Segun caracterActual Hacer
				"a": codificacion = concatenar(codificacion, "@")
				"e": codificacion = concatenar(codificacion, "#")
				"i": codificacion = concatenar(codificacion, "$")
				"o": codificacion = concatenar(codificacion, "%")
				"u": codificacion = concatenar(codificacion, "*")
				".": codificacion = concatenar(codificacion, caracterActual) 
					i = Longitud(secuencia)+1
				De Otro Modo: codificacion = concatenar(codificacion, caracterActual)
			FinSegun
		FinPara
FinSubProceso
