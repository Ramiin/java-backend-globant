Algoritmo AdivinaNumero
    Definir n, x como Entero
    n <- Aleatorio(1, 10)  // Elige un n�mero al azar entre 1 y 10
    Escribir "�Bienvenido al juego de adivinar el n�mero!"
    Hacer
        Escribir "Ingresa un n�mero entre 1 y 10: "
        Leer x
        Si x < n Entonces
            Escribir "El n�mero que buscas es m�s grande que ", x
		FinSi
		
		Si x > n Entonces
			Escribir "El n�mero que buscas es m�s peque�o que ", x
		FinSi
	Mientras Que x <> n  // Repite hasta que x sea igual a n
			Escribir "�Felicidades, adivinaste el n�mero!"
FinAlgoritmo

