//Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
//múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
//recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
//compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
//deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
//cada venta.

Algoritmo CompaniaSeguros
	
	Definir n, sueldo_base, cobro_venta, comision, pago_comision, sueldo_total Como Real
	Definir ventas, i, j Como Entero
	Escribir "Ingrese el número de vendedores:"
	Leer n
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese el sueldo base del vendedor ", i, ":"
		Leer sueldo_base
		
		Escribir "Ingrese la cantidad de ventas del vendedor ", i, ":"
		Leer ventas
		
		pago_comision <- 0
		
		Para j=1 Hasta ventas Con Paso 1 Hacer
			Escribir "Ingrese el monto cobrado por la venta ", j, " del vendedor ", i, ":"
			Leer cobro_venta
			
			comision <- cobro_venta * 0.1
			pago_comision <- pago_comision + comision
		FinPara
		
		sueldo_total <- sueldo_base + pago_comision
		
		Escribir "El vendedor ", i, " cobrará ", pago_comision, " por comisiones."
		Escribir "El vendedor ", i, " cobrará ", sueldo_total, " de sueldo total."
		
	FinPara
	
FinAlgoritmo
