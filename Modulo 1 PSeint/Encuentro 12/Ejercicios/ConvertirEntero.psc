//Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con
//decimales ni letras. Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).

Algoritmo ConvertirEntero
    Definir numeroCadena Como Cadena
    Definir numeroEntero Como Entero
	
    Escribir "Ingrese un n�mero en forma de cadena: "
    Leer numeroCadena
	
    numeroEntero <- ConvertirANumeroEntero(numeroCadena)
	
    Escribir "El n�mero entero es: ", numeroEntero
	
FinAlgoritmo

Funcion resultado <- ConvertirANumeroEntero(cadena)
    Definir resultado Como Entero
	resultado <- ConvertirANumero(cadena)
	
	
FinFuncion
