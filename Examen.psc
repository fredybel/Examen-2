Funcion EsperarInfinito
	Escribir "Presione cualquier tecla para continuar...."
	Esperar Tecla
Fin Funcion

Funcion val <- Menu
	Limpiar Pantalla
	
	Escribir "********************************************"
	Escribir "*                    MENU                  *"
	Escribir "* 1.           Fórmula Cuadrática          *"
	Escribir "* 2.           Tablas de multiplicar       *"
	Escribir "* 3. Salir                                 *"
	Escribir "********************************************"
	Escribir "Escoja la opción:"
	Leer val
Fin Funcion


Funcion tablas
	Limpiar Pantalla
	Escribir "********************************************"
	Escribir "*          Tablas de multiplicar           *"
	Escribir "********************************************"
	Escribir "ingrese No. de tabla que desea visualizar?"
	Leer tabla
	
	
	Para multip <- 1 Hasta 10 Con Paso 1 Hacer
		resultado = tabla * multip
		Escribir tabla, "x", multip, "=", resultado
	Fin Para
	
Fin Funcion


Funcion form2
	Escribir "************************************"
	Escribir "*        FORMULA CUADRATICA        *"
	Escribir "************************************"
	Escribir "Ingrese el valor de a"
	Leer a
	Escribir "Ingrese el valor de b"
	Leer b
	Escribir "Ingrese el valor de c"
	Leer c
	
	Si a <> 0 Entonces
		raiz_2 <- (b * b) - (4 * a * c)
		
		
		Si raiz_2 > 0 Entonces
			x1 = (-b + raiz(raiz_2)) / (2 * a)
			x2 = (-b - raiz(raiz_2)) / (2 * a)
			Escribir "x1: ", x1
			Escribir "x2: ", x2
		SiNo
			Escribir "El resultado de la raíz cuadrada no puede ser negativa"
		Fin Si
		
		
		
	sino Escribir "El valor de a no puede ser igual a cero"
	Fin Si
Fin Funcion



Algoritmo Examen
	Repetir
		op<-Menu
		Segun op Hacer
			1:
				form2()
			2:
				tablas()
			3:
				Escribir "Hasta luego...."
			De Otro Modo:
				Escribir "Opción no válida..."
				
		Fin Segun
		EsperarInfinito()
	Hasta Que op = 3
FinAlgoritmo
