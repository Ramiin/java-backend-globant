//Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
//Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves
//de sus estudiantes:
//Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante eprueba el curso si tiene una nota final inferior a 6.5
// Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
//las 3 notas y calculará todos informes claves que requiere el docente.

Algoritmo informes_notas
    Definir cantidad_estudiantes, integrador, exposicion, parcial, nota_final, suma_notas, promedio_notas, promedio_reprobados Como Real
	Definir porcentaje_integrador, mayor_exposicion, total_entre_4_7, contador_reprobados, contador_integrador, contador_entre_4_7, i como Real
    
    Escribir "Ingrese la cantidad de estudiantes:"
    Leer cantidad_estudiantes
    
	suma_notas <- 0
    promedio_reprobados <- 0
    porcentaje_integrador <- 0
    mayor_exposicion <- 0
    total_entre_4_7 <- 0
    contador_reprobados <- 0
    contador_integrador <- 0
    contador_entre_4_7 <- 0
    
    Para i <- 1 Hasta cantidad_estudiantes Hacer
        Escribir "Ingrese la nota del integrador del estudiante ", i, ":"
        Leer integrador
        Escribir "Ingrese la nota de la exposicion del estudiante ", i, ":"
        Leer exposicion
        Escribir "Ingrese la nota del parcial del estudiante ", i, ":"
        Leer parcial
        
        nota_final <- (integrador * 0.35) + (exposicion * 0.25) + (parcial * 0.4)
        Escribir "La nota final del estudiante ", i, " es: ", nota_final
        
        suma_notas <- suma_notas + nota_final
        
        Si nota_final < 6.5 Entonces
            contador_reprobados <- contador_reprobados + 1
            promedio_reprobados <- promedio_reprobados + nota_final
        FinSi
        
        Si integrador > 7.5 Entonces
            contador_integrador <- contador_integrador + 1
        FinSi
        
        Si exposicion > mayor_exposicion Entonces
            mayor_exposicion <- exposicion
        FinSi
        
        Si parcial >= 4.0 Y parcial <= 7.5 Entonces
            contador_entre_4_7 <- contador_entre_4_7 + 1
        FinSi
    FinPara
    
    promedio_notas <- suma_notas / cantidad_estudiantes
	Si contador_reprobados>0 Entonces
		promedio_reprobados <- promedio_reprobados / contador_reprobados
	FinSi
   
    porcentaje_integrador <- (contador_integrador * 100) / cantidad_estudiantes
    
    Escribir "El promedio de notas de los estudiantes que reprobaron es: ", promedio_reprobados
    Escribir "El porcentaje de estudiantes con nota de integrador mayor a 7.5 es: ", porcentaje_integrador, "%"
    Escribir "La mayor nota obtenida en las exposiciones es: ", mayor_exposicion
    Escribir "El total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5 es: ", contador_entre_4_7
FinAlgoritmo
