//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//dicho procedimiento.


Algoritmo programaPrincipal
    Definir texto, nuevoTexto Como Cadena
		Escribir "Ingrese un texto:"
		Leer texto
		convertirEspaciado(texto, nuevoTexto)
		Escribir "El texto con un espacio adicional tras cada letra es: ", nuevoTexto
		
FinAlgoritmo


SubProceso  convertirEspaciado(texto, resultado Por Referencia)
	Definir i Como Entero
	resultado = ""
    Para i = 0 Hasta Longitud(texto)-1 Hacer
        resultado = resultado + SubCadena(texto, i, i) + " ";
    FinPara
FinSubProceso


