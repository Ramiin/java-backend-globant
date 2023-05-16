//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).

Algoritmo ConvertirEntero
    Definir numeroCadena Como Cadena
    Definir numeroEntero Como Entero
	
    Escribir "Ingrese un número en forma de cadena: "
    Leer numeroCadena
	
    numeroEntero <- ConvertirANumeroEntero(numeroCadena)
	
    Escribir "El número entero es: ", numeroEntero
	
FinAlgoritmo

Funcion resultado <- ConvertirANumeroEntero(cadena)
    Definir resultado Como Entero
	resultado <- ConvertirANumero(cadena)
	
	
FinFuncion
