//Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
Proceso letraEntreRango
    Definir letra Como Caracter
	Definir resultado Como Logico
	resultado = Falso
    
    Escribir "Ingrese una letra:"
    Leer letra
    validarLetra(Minusculas(letra), resultado)
	Si resultado Entonces
		Escribir "La letra ingresada - SI - se encuentra dentro del rango de letras M a T."
	SiNo
		Escribir "La letra ingresada - NO - se encuentra dentro del rango de letras M a T."
	FinSi
    
FinProceso

SubProceso validarLetra(letra, resultado Por Referencia)
	Si letra >= "m" y letra <= "t" Entonces
        resultado = Verdadero
    FinSi
FinSubProceso
