Algoritmo AdivinaNumero
    Definir n, x como Entero
    n <- Aleatorio(1, 10)  // Elige un número al azar entre 1 y 10
    Escribir "¡Bienvenido al juego de adivinar el número!"
    Hacer
        Escribir "Ingresa un número entre 1 y 10: "
        Leer x
        Si x < n Entonces
            Escribir "El número que buscas es más grande que ", x
		FinSi
		
		Si x > n Entonces
			Escribir "El número que buscas es más pequeño que ", x
		FinSi
	Mientras Que x <> n  // Repite hasta que x sea igual a n
			Escribir "¡Felicidades, adivinaste el número!"
FinAlgoritmo

