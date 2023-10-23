Funcion  ejercicio1
	//Leer un carácter y deducir si está o no comprendido entre las     
	//letras 'a'... 'z' y 'A'...'Z' ambas inclusive  y sino verificar si es un signo de puntuacion ", . ; :"    y si no presentar solo el caracter.
	Definir carac Como Caracter //Defino las variables
	
    Escribir "Ingrese un carácter: "
    Leer carac
	
    // Verificar si es una letra minúscula
    Si carac >= 'a' Y carac <= 'z' Entonces //Si si carac va desde a a la z minúscula entonces escribir lo siguiente
        Escribir "El carácter es una letra minúscula."
		// Verificar si es una letra mayúscula
	SiNo
		
		Si carac >= 'A' Y carac <= 'Z' Entonces //Si carac va desde A a la Z mayúscula entonces escribir lo siguiente
          Escribir "El carácter es una letra mayúscula."
		 // Verificar si es un signo de puntuación
    Sino 
		  si carac = ',' O carac = '.' O carac = ';' O carac = ':' Entonces //Si carac es un signo de puntuación entonces escribir lo siguiente
              Escribir "El carácter es un signo de puntuación."
        Sino
               Escribir  carac //Si el caracter no es de a la z ya sea mayúscula o minúscula o si no es un signo de puntuación se muestra solo el carácter elegido
		   FinSi
		Fin si	
	FinSi

	
FinFuncion
//-------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio2
	//2) Leer un carácter y deducir si este es un numero(0..9) o una vocal(a,e,i,o,u) 
	
	Definir carac Como Caracter //Defino variables
	Escribir "Ingrese un carácter:"
	Leer carac
	Si carac = "a" o carac = "e" o carac = "i" o carac = "o" o carac = "u"      Entonces //Si el caracter ingresado es a,e,i,o,u entonces escribir lo siguiente
		Escribir "Su carácter es una vocal"	
	SiNo
		Si carac = "1" o carac = "2" o carac = "3" o carac = "4" o carac = "5" o carac = "6" o carac = "7" o carac = "8" o carac = "9" o carac = "0" Entonces //Si carac va del 0 al 9 escribir lo siguiente
			Escribir "Su carácter es un número"
		SiNo
			Escribir "Su carácter no es un número del 0 al 9 ni una vocal." //Si el caracter no es vocal o numero del 0 al 9 escribir lo siguiente
			
		FinSi
	Fin Si
FinFuncion

//-------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio3
	//3) Dado un caracter vocal presentar su respectivo valor ascii 
	Definir vocal como caracter //Defino variables
	Definir ascii Como Entero
	
    Escribir "Ingrese un carácter vocal (a,e,i,o,u) para conocer su valor ascii : "
    Leer vocal

    Si vocal = "a" Entonces //Depende la vocal elegida por el usuario se muestra el valor de ascii de cadad vocal 
        ascii = 97
		Escribir "El valor ascii de ", vocal " es: ", ascii
    Sino
        Si vocal = "e" Entonces
            ascii = 101
			Escribir "El valor ascii de ", vocal " es: ", ascii
        Sino
            Si vocal = "i" Entonces
                ascii = 105
				Escribir "El valor ascii de ", vocal " es: ", ascii
				
            Sino
                Si vocal = "o" Entonces
                    ascii = 111
					Escribir "El valor ascii de ", vocal " es: ", ascii
                Sino
                    Si vocal = "u" Entonces
                        ascii = 117
						Escribir "El valor ascii de ", vocal " es: ", ascii
                    Sino
                        Escribir "El carácter ingresado no es correcto" //Si el caracter ingresado no es a,e,i,o,u , mostrar lo siguiente
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi	
FinFuncion
//-------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio4
	//4) Leer dos nombres y verificar si estos son iguales, si el primer nombre es menor que el segundo dado su contenido.
	Definir nom1, nom2 Como Caracter //Defino las variables
    Definir i, long1, long2, resultado Como Entero
	resultado = 0
    Escribir "Ingrese el primer nombre: "
    Leer nom1
    Escribir "Ingrese el segundo nombre: "
    Leer nom2
	
    long1 = Longitud(nom1)
    long2 = Longitud(nom2)
	
    // Comparar los nombres carácter por carácter
    Para i = 1 Hasta long1 Hacer
        Si i > long2 Entonces
            resultado = 1
            
        FinSi
		
        Si SubCadena(nom1, i, 1) < SubCadena(nom2, i, 1) Entonces
            resultado = -1
            
        Sino
            Si SubCadena(nom1, i, 1) > SubCadena(nom2, i, 1) Entonces
                resultado = 1

            FinSi
        FinSi
    FinPara
	
    // Verificar si la longitud de los nombres es diferente
    Si resultado = 0 Y long1 < long2 Entonces
        resultado = -1
    Sino
        Si resultado = 0 Y long1 > long2 Entonces
            resultado = 1
        FinSi
    FinSi
	
    Segun resultado Hacer //Segun resultado escribir lo siguiente
	  -1:
            Escribir "El nombre " nom1 " es menor que el nombre ", nom2 " según su contenido."
       0:
            Escribir "Los nombres son iguales."
	   1:
            Escribir "El nombre " nom2 " es menor que el nombre ", nom1 " según su contenido."
    FinSegun
FinFuncion

	//-------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio5
	//	5) Ingresar dos numeros y determinar si son iguales o si el primer numero es menor que el segundo dado su valor 
	Definir num1, num2 Como Entero //Defino variables
	Escribir "Ingrese su primer número:"
	leer num1
	Escribir "Ingrese su segundo número:"
	leer num2
	Si num1 == num2 Entonces //Si el primer número es igual al segundo número esribir lo siguiente
		Escribir "Sus números son iguales"
	SiNo
		si num1 < num2 Entonces
			Escribir "Su primer número es menor que su segundo número" //Si el primer número es menor que el segundo número escribir lo siguiente
			//Si no se cumple ninguna de las dos opciones se finaliza
		FinSi
	Fin Si
FinFuncion

//-------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio6
	//6) Ingresar 3 números,  determinar cuál es el  mayor o si son iguale
	Definir num1, num2, num3 Como Entero //Defino variables
	Escribir "Ingrese su primer número:"
	leer num1
	Escribir "Ingrese su segundo número:"
	leer num2
	Escribir "Ingrese su tercer número:"
	leer num3
	Si num1 == num2  y num1 == num3 Entonces //Si los 3 números son iguales ingresar lo siguiente
		Escribir "Sus números son iguales"
	SiNo
		si num1 > num2 y num1 > num3 Entonces //Si el numero 1 es mayor que el numero 2 y que el numero 3 escribir lo siguiente
			Escribir "El número ", num1 " es el mayor."
		SiNo
			si num2 > num1 y num2 > num3 Entonces //Si el numero 2 es mayor que el numero 1 y que el numero 3 escribir lo siguiente
				Escribir "El número ", num2 " es el mayor."
			SiNo
				si num3 > num2 y num3 > num1 Entonces //Si el numero 3 es mayor que el numero 2 y que el numero 1 escribir lo siguiente
					Escribir "El número ", num3 " es el mayor."
				Fin si	
			Fin si		
		FinSi
	Fin Si
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio7 
	//7) Ingresar un numero  y determinar si es neutro, positivo o negativo
	Definir num Como Entero //Defino variables
	Escribir "Ingrese un número:"
	Leer num
	
	Si num > 0 Entonces //Si el número ingresado es mayor que 0 escribir lo siguiente
		Escribir "Su número es positivo"
	SiNo
		si num < 0 Entonces //Si el número ingresado es menor que 0 escribir lo siguiente
			Escribir "Su número es negativo"
		SiNo 
			Escribir "Su número es neutro" //Si el número ingresado no es mayor ni menor a 0 escribir lo siguiente
		FinSi
	Fin Si
	
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio8
	//8) Determinar cuanto se  debe pagar por x  cantidad de lápices,  
	//considerando que si  son más de 1000 el  costo es de 1 , caso  contrario  el precio será  1,50 
	Definir cantidad Como Entero //Defino las variables
	Escribir "¿Cuántos lápices desea comprar?"
	leer cantidad
	Si cantidad > 1000 Entonces //Si cantidad es mayor a 1000 cantidad es igual a la cantidad por 1
		cantidad = cantidad * 1
		Escribir "Su total a pagar es de: $", cantidad
	SiNo
	    si cantidad <= 1000 entonces //Si cantidad es menor o igual a 1000 cantidad es igual a la cantidad por 1.5
		 cantidad = cantidad * 1.5
		 Escribir "Su total a pagar es de: $", cantidad
		Fin Si
	Fin si
	
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//

//Almacén "Somos Mas" tiene una promoción: a todos los trajes que
//tienen un precio superior a 2500, se les aplicará un descuento del 15%,
//a todo los demás se les aplicará sólo el 8%.
Funcion ejercicio9
	// Declaración de variables
	Definir precioTraje Como Real;
	Definir descuento Como Real;
	// Entrada de datos
	Escribir "Ingrese el precio del traje: ";
	Leer precioTraje;
	
	// Determinar el descuento a aplicar
	Si(precioTraje > 2500) Entonces
		descuento = 0.15
	Sino
		descuento = 0.08
		
		// Calcular el precio final con descuento
		precioFinal = precioTraje - precioTraje * descuento
	FinSi
	// Mostrar resultado
	Escribir "El precio final con descuento es: ", precioFinal;
	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion  ejercicio10
	// "Somos Mas" es una empresa dedicada a ofrecer banquetes; sus tarifas son las siguientes:El costo de platillo por persona es de $95.00, pero si el número de
	// personas es mayor a 200 pero menor o igual a 300, el costo es de $85.00.
	// Para más de 300 personas el costo por platillo es de $75.00. Se requiere un 
	// algoritmo que ayude a determinar el presupuesto que se debe presentar a los
	// clientes que deseen realizar un evento
	
	Definir num_personasentero Como Entero
	Definir costo_platillo Como Real
	definir costo_total como real
	
	//Solicitamos el número de personas
	escribir "Ingrese el número de personas: "
	leer num_personas
	
	// Determinamos el costo del platillo
	si num_personas <= 200
		costo_platillo = 95
	sino
		
		si num_personas <= 300
			entonces
			costo_platillo = 85
		sino
			costo_platillo = 75
		finsi
	FinSi
	//Calculamos el costo total
	costo_total = num_personas * costo_platillo
	
	// Imprimimos el costo total
	escribir "El costo total del banquete es de: ", costo_total
	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion  ejercicio11
	
	// La asociación de vinicultores tiene como política fijar un precio inicial al kilo 
	// de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
	// Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se 
	// requiere determinar cuánto recibirá un productor por la uva que entrega en un
    // embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20¢ al precio
	// inicial cuando es de tamaño 1; y 30¢ si es de tamaño 2. Si es de tipo B, se rebajan
	// 30¢ cuando es de tamaño 1, y 50¢ cuando es de tamaño 2.Realice un algoritmo para determinar la ganancia obtenida
	
	Escribir "EstudioMuestra"
	Definir edad, peso, estatura, contadorEdades18a25, contadorMayores36, contadorEdades18a35 Como Entero
	Definir sumaEdades, sumaPesos, sumaEstaturas, sumaPesosEdades18a35 Como Real
	
	contadorEdades18a25 = 0
	contadorMayores36 = 0
	contadorEdades18a35 = 0
	sumaEdades = 0
	sumaPesos = 0
	sumaEstaturas = 0
	sumaPesosEdades18a35 = 0
	
	Escribir "Ingrese la secuencia de edad, peso y estatura de las personas (terminada en 0): "
	
	Leer edad, peso, estatura
	
	Mientras edad <> 0 Hacer
		sumaEdades = sumaEdades + edad
		sumaPesos = sumaPesos + peso
		sumaEstaturas = sumaEstaturas + estatura
		
		Si edad >= 18 Y edad <= 25 Entonces
			contadorEdades18a25 = contadorEdades18a25 + 1
		FinSi
		
		Si edad > 36 Entonces
			contadorMayores36 = contadorMayores36 + 1
		FinSi
		
		Si edad >= 18 Y edad <= 35 Entonces
			contadorEdades18a35 = contadorEdades18a35 + 1
			sumaPesosEdades18a35 = sumaPesosEdades18a35 + peso
		FinSi
		
		Leer edad, peso, estatura
	FinMientras
	
	Si contadorEdades18a25 = 0 Entonces
		Escribir "No hay personas con edades entre 18 y 25 años."
	Sino
		Escribir "Cantidad de personas con edades entre 18 y 25 años: ", contadorEdades18a25
	FinSi
	
	Si contadorMayores36 = 0 Entonces
		Escribir "No hay personas mayores a 36 años."
	Sino
		Escribir "Cantidad de personas mayores a 36 años: ", contadorMayores36
	FinSi
	
	Si contadorEdades18a35 = 0 Entonces
		Escribir "No hay personas con edades entre 18 y 35 años."
	Sino
		promedioPesosEdades18a35 = sumaPesosEdades18a35 / contadorEdades18a35
		Escribir "Promedio de peso de las personas con edades entre 18 y 35 años: ", promedioPesosEdades18a35
	FinSi
	
	promedioEdades = sumaEdades / (contadorEdades18a25 + contadorEdades18a35)
	promedioPesos = sumaPesos / (contadorEdades18a25 + contadorEdades18a35)
	promedioEstaturas = sumaEstaturas / (contadorEdades18a25 + contadorEdades18a35)
	
	Escribir "Edad promedio de todas las personas en la muestra: ", promedioEdades
	Escribir "Peso promedio de todas las personas en la muestra: ", promedioPesos
	Escribir "Estatura promedio de todas las personas en la muestra: ", promedioEstaturas
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion  ejercicio12
	// El director de carrera de software está organizando un viaje de estudios,
	// y requiere determinar cuánto debe cobrar a cada alumno y cuánto debe pagar
    // a la compañía de viajes por el servicio. La forma de cobrar es la siguiente: 
	// si son 100 alumnos o más, el costo por cada alumno es de $65.00; 
	// de 50 a 99 alumnos, el costo es de $70.00, de 30 a 49, de $95.00, y si son menos
	// de 30, el costo de la renta del autobús es de $4000.00, sin importar el número
	// de alumnos.Realice un algoritmo que permita determinar el pago a la compañía
	// de autobuses y lo que debe pagar cada alumno por el viaje
	
	
	Escribir "TablasDeMultiplicar"
	Definir multiplicando, multiplicador, resultado Como Entero
	
	Para multiplicando = 1 Hasta 10 Hacer
		Escribir "Tabla de multiplicar del ", multiplicando, ":"
		
		Para multiplicador = 1 Hasta 10 Hacer
			resultado = multiplicando * multiplicador
			Escribir multiplicando, " x ", multiplicador, " = ", resultado
		FinPara
		
		Escribir "-----------------------------"
	FinPara
	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion  ejercicio13
	//  Una compañía de viajes cuenta con tres tipos de autobuses (A, B y C), 
	// cada uno tiene un precio por kilómetro recorrido por persona, los costos respectivos son $2.0, 
	// $2.5 y $3.0. Se requiere determinar el costo total y por persona del viaje considerando que 
	// cuando éste se presupuesta debe haber un mínimo de 20 personas, de lo contrario el cobro se realiza con base en este número límite.
	
	Escribir "MultiplicacionPorSumas"
	Definir num1, num2, resultado, contador Como Entero
	
	Escribir "Ingrese el primer número:"
	Leer num1
	
	Escribir "Ingrese el segundo número:"
	Leer num2
	
	resultado = 0
	contador = 0
	
	Mientras contador < num2 Hacer
		resultado = resultado + num1
		contador = contador + 1
	Fin Mientras
	
	Escribir "El resultado de la multiplicación es:", resultado
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio14
	
	// Determinar cuanto se debe pagar por cierta cantidad de colas,considerando que si son más de 23 colas, el costo por unidad 
    // es de $0,50 caso contrario el precio será 20% mas. 
    // Al costo resultante calcular el 12% del iva. Se pide presentar:cantidad comprada, el costo ´por unidad, el total sin iva
	// el iva y el total a pagar
	
	Escribir "PromedioSerie"
	Definir num, suma, contador, promedio Como Real
	
	suma <- 0
	contador <- 0
	
	Escribir "Ingrese los números de la serie (terminar con 0):"
	Leer num
	
	Mientras num <> 0 Hacer
		suma = suma + num
		contador = contador + 1
		
		Leer num
	Fin Mientras
	
	Si contador > 0 Entonces
		promedio = suma / contador
		Escribir "El promedio de la serie es:", promedio
	Sino
		Escribir "No se ingresaron números en la serie."
	FinSi
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion  ejercicio15
	
	// En un Supermercado se tiene la siguiente promocion.Si se compra mas de 19 productos a estos se le aplica 
	// un descuento del 10 por ciento al precio del producto y si se compramenos de 20 productos se le aplica un descuento del 20 por ciento 
	// al precio del producto. Al costo obtenido se le aplica descuento adicional del 5 por ciento. Se pide presentar :
	// cantidad comprada, el precio orginal, el descuento inicial el total, el descuento adicional y el valor a pagar.
	
	
	Escribir "DivisionPorRestas"
	Definir dividendo, divisor, cociente, resta Como Entero
	
	Escribir "Ingrese el dividendo:"
	Leer dividendo
	
	Escribir "Ingrese el divisor:"
	Leer divisor
	
	cociente = 0
	resta = dividendo
	
	Mientras resta >= divisor Hacer
		resta = resta - divisor
		cociente = cociente + 1
	Fin Mientras
	
	Escribir "El cociente es:", cociente
	Escribir "La resta es:", resta
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio16
	// El consultorio del Dr. Paez tiene como política cobrar la consulta con base en el número de cita, de la siguiente forma:
	//Las tres primeras citas a $200.00 c/u.Las siguientes dos citas a $150.00 c/u.Las tres siguientes citas a $100.00 c/u.
	// Las restantes a $50.00 c/u, mientras dure el tratamiento.Se requiere un algoritmo para determinar:
	// Cuánto pagará el paciente por la cita.El monto de lo que ha pagado el paciente por el tratamiento.
	// Para la solución de este problema se requiere saber qué número de cita se efectuará, con el 
	// cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el tratamiento.
	
	
    Definir numero_cita, costo_cita, monto_total como Entero
    
    costo_cita = 0
    monto_total = 0
    
    Escribir "Ingrese el número de cita:"
    Leer numero_cita
    
    // Calcular el costo de la cita
    Si numero_cita <= 3 Entonces
        costo_cita = 200
    Sino 
        Si numero_cita <= 5 Entonces
            costo_cita = 150
        Sino 
            Si numero_cita <= 8 Entonces
                costo_cita = 100
            Sino
                costo_cita = 50
            FinSi
        FinSi
    FinSi
    
    // Calcular el monto total pagado por el tratamiento
    Si numero_cita <= 3 Entonces
        monto_total = numero_cita * 200
    Sino 
        Si numero_cita <= 5 Entonces
            monto_total = (3 * 200) + ((numero_cita - 3) * 150)
        Sino 
            Si numero_cita <= 8 Entonces
                monto_total = (3 * 200) + (2 * 150) + ((numero_cita - 5) * 100)
            Sino
                monto_total = (3 * 200) + (2 * 150) + (3 * 100) + ((numero_cita - 8) * 50)
            FinSi
        FinSi
    FinSi
    
    Escribir "El costo de la cita es: ", costo_cita
    Escribir "El monto total pagado por el tratamiento es: ", monto_total
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio17
    Definir clave, costo_materia_prima, costo_mano_obra, costo_fabricacion, costo_produccion, precio_venta como Real
	
    Escribir "Ingrese la clave del producto (1-6):"
    Leer clave
	
    Escribir "Ingrese el costo de la materia prima:"
    Leer costo_materia_prima
	
    // Calcular costo de la mano de obra
    Si clave = 3 o clave = 4 Entonces
        costo_mano_obra <- 0.75 * costo_materia_prima
    Sino Si clave = 1 o clave = 5 Entonces
			costo_mano_obra <- 0.8 * costo_materia_prima
		Sino
			costo_mano_obra <- 0.85 * costo_materia_prima
		Fin Si
	finsi 
	
	// Calcular costo de fabricación
	Si clave = 2 o clave = 5 Entonces
		costo_fabricacion <- 0.3 * costo_materia_prima
	Sino Si clave = 3 o clave = 6 Entonces
			costo_fabricacion <- 0.35 * costo_materia_prima
		Sino
			costo_fabricacion <- 0.28 * costo_materia_prima
		Fin Si
	finsi
	
	// Calcular costo de producción
	costo_produccion <- costo_materia_prima + costo_mano_obra + costo_fabricacion
	
	// Calcular precio de venta
	precio_venta <- costo_produccion + 0.45 * costo_produccion
	
	Escribir "El precio de venta del producto es: ", precio_venta
	
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio18
    Definir tipo_tarjeta como Entero
    Definir limite_actual, nuevo_limite como Real
	
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3):"
    Leer tipo_tarjeta
	
    Escribir "Ingrese el límite de crédito actual:"
    Leer limite_actual
	
    // Calcular el aumento del límite de crédito
    Si tipo_tarjeta = 1 Entonces
        nuevo_limite <- limite_actual + 0.25 * limite_actual
    Sino Si tipo_tarjeta = 2 Entonces
			nuevo_limite <- limite_actual + 0.35 * limite_actual
		Sino Si tipo_tarjeta = 3 Entonces
				nuevo_limite <- limite_actual + 0.4 * limite_actual
			Sino
				nuevo_limite <- limite_actual + 0.5 * limite_actual
			Fin Si
		FinSi
	finsi
	
	Escribir "El nuevo límite de crédito es: ", nuevo_limite
	
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio19
    Definir peso_paquete como Real
    Definir zona_destino como Entero
    Definir costo_envio como Real
	
    Escribir "Ingrese el peso del paquete en kg:"
    Leer peso_paquete
	
    // Verificar si el peso del paquete es superior a 5kg
    Si peso_paquete > 5 Entonces
        Escribir "El paquete excede el peso máximo permitido. No se puede enviar."
    Sino
        Escribir "Ingrese la zona de destino (1: América del Norte, 2: América Central, 3: América del Sur, 4: Europa, 5: Asia):"
        Leer zona_destino
		
        // Calcular el costo de envío según la zona de destino
        Segun zona_destino Hacer
            Caso 1:
                costo_envio <- peso_paquete * 11.00
            Caso 2:
                costo_envio <- peso_paquete * 10.00
            Caso 3:
                costo_envio <- peso_paquete * 12.00
            Caso 4:
                costo_envio <- peso_paquete * 24.00
            Caso 5:
                costo_envio <- peso_paquete * 27.00
            De Otro Modo:
                Escribir "Zona de destino inválida. No se puede calcular el costo de envío."
        Fin Segun
		
        Si costo_envio <> 0 Entonces
            Escribir "El costo de envío es: ", costo_envio
        Fin Si
    Fin Si
	
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio20
    Definir cantidad_numeros, numero, suma_numeros como Entero
    Definir promedio como Real
    
    cantidad_numeros <- 0
    suma_numeros <- 0
    
    Escribir "Ingrese los números (0 para terminar):"
    Leer numero
    
    Mientras numero <> 0 Hacer
        suma_numeros <- suma_numeros + numero
        cantidad_numeros <- cantidad_numeros + 1
        
        Escribir "Ingrese otro número (0 para terminar):"
        Leer numero
    Fin Mientras
    
    Si cantidad_numeros > 0 Entonces
        promedio <- suma_numeros / cantidad_numeros
        Escribir "El promedio de los números ingresados es:", promedio
    Sino
        Escribir "No se ingresaron números"
    Fin Si
    
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio21
    Definir num1, num2, num3, num4 como Entero
    
    Escribir "Ingrese el número 1:"
    Leer num1
    
    Escribir "Ingrese el número 2:"
    Leer num2
    
    Escribir "Ingrese el número 3:"
    Leer num3
    
    Escribir "Ingrese el número 4:"
    Leer num4
    
    Si num1 * 2 = num2 Entonces
        Escribir "El número 1 es la mitad del número 2"
    Sino
        Escribir "El número 1 no es la mitad del número 2"
    Fin Si
    
    Si num4 % num3 = 0 Entonces
        Escribir "El número 3 es divisor del número 4"
    Sino
        Escribir "El número 3 no es divisor del número 4"
    Fin Si
    
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio22
    Definir num1, num2, num3 como Entero
    
    Escribir "Ingrese el número 1:"
    Leer num1
    
    Escribir "Ingrese el número 2:"
    Leer num2
    
    Escribir "Ingrese el número 3:"
    Leer num3
    
    Si num1 = 1 Entonces
        Escribir "El número 1 es el día lunes"
    Sino Si num1 = 2 Entonces
			Escribir "El número 1 es el día martes"
		Sino Si num1 = 3 Entonces
				Escribir "El número 1 es el día miércoles"
			Sino Si num1 = 4 Entonces
					Escribir "El número 1 es el día jueves"
				Sino Si num1 = 5 Entonces
						Escribir "El número 1 es el día viernes"
					Sino Si num1 = 6 Entonces
							Escribir "El número 1 es el día sábado"
						Sino Si num1 = 7 Entonces
								Escribir "El número 1 es el día domingo"
							Sino
								Escribir "El número 1 es un día inválido"
							Fin Si
							
							Si num2 = 1 Entonces
								Escribir "El número 2 es el día lunes"
							Sino Si num2 = 2 Entonces
									Escribir "El número 2 es el día martes"
								Sino Si num2 = 3 Entonces
										Escribir "El número 2 es el día miércoles"
									Sino Si num2 = 4 Entonces
											Escribir "El número 2 es el día jueves"
										Sino Si num2 = 5 Entonces
												Escribir "El número 2 es el día viernes"
											Sino Si num2 = 6 Entonces
													Escribir "El número 2 es el día sábado"
												Sino Si num2 = 7 Entonces
														Escribir "El número 2 es el día domingo"
													Sino
														Escribir "El número 2 es un día inválido"
													Fin Si
													
													Si num3 = 1 Entonces
														Escribir "El número 3 es el día lunes"
													Sino Si num3 = 2 Entonces
															Escribir "El número 3 es el día martes"
														Sino Si num3 = 3 Entonces
																Escribir "El número 3 es el día miércoles"
															Sino Si num3 = 4 Entonces
																	Escribir "El número 3 es el día jueves"
																Sino Si num3 = 5 Entonces
																		Escribir "El número 3 es el día viernes"
																	Sino Si num3 = 6 Entonces
																			Escribir "El número 3 es el día sábado"
																		Sino Si num3 = 7 Entonces
																				Escribir "El número 3 es el día domingo"
																			Sino
																				Escribir "El número 3 es un día inválido"
																			Fin Si
																		finsi 
																	finsi 
																FinSi
															FinSi
														FinSi
													finsi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							Fin si
						Fin si
					Fin si
				Fin si
			Fin si
		Fin si
	Fin si
FinFuncion

//------------------------------------------------------------------------------------------------------------------------------------//
	
Funcion ejercicio23
	//23) Realizar un programa que ingrese un número presentar un mensaje  equivalente a los días de la semana. 
	definir dia Como Entero
	Escribir "Ingrese un numero de dia del 1 al 7 para saber que día de la semana es: "
	Leer dia
	Segun dia Hacer
		1:
			Escribir "hoy es Lunes"
		2:
			Escribir "hoy es Martes"
		3:
			Escribir "hoy es Miércoles"
		4:
			Escribir "hoy es Jueves"
		5:
			Escribir "hoy es Viernes"
		6:
			Escribir "hoy es Sábado"
		7:
			Escribir "hoy es Domingo "
		De Otro Modo:
			Escribir " Numero incorrecto no pertenece a ningun dia: "
	FinSegun
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio24
	//24) Realizar un programa que ingrese un número presentar un mensaje equivalente a los nombres de los meses del año 
	definir mes Como Entero
	Escribir "Ingrese un numero de dia del 1 al 12 para saber que mes es:"
	Leer mes
	Segun mes Hacer
		1:
			Escribir "Enero"
		2:
			Escribir "Febrero"
		3:
			Escribir "Marzo"
		4:
			Escribir "Abril"
		5:
			Escribir "Mayo"
		6:
			Escribir "Junio"
		7:
			Escribir "Julio"
		8: 
			Escribir "Agosto"
		9:
			Escribir "Septiembre"
		10:
			Escribir "Octubre"
		11:
			Escribir "Noviembre" 
		12:
			Escribir "Diciembre"
		De Otro Modo:
			Escribir " Numero incorrecto no pertenece a ningun mes: "
	FinSegun
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio25
	//25) Se requiere un algoritmo para obtener la estatura promedio de un grupo de personas, cuyo número de personas se desconoce, 
	//el ciclo debe efectuarse siempre y cuando se tenga una estatura registrada. 
	Definir estatura, totalEstaturas, cantidadPersonas Como Real
	
    totalEstaturas = 0
    cantidadPersonas = 0
	
    Escribir "Ingrese la estatura de la persona (0 para terminar):"
    Leer estatura

    Mientras estatura <> 0 Hacer
        totalEstaturas = totalEstaturas + estatura
        cantidadPersonas = cantidadPersonas + 1
		
        Escribir "Ingrese la estatura de la persona (0 para terminar):"
        Leer estatura
    FinMientras
	
    Si cantidadPersonas > 0 Entonces
        promedioEstaturas = totalEstaturas / cantidadPersonas
        Escribir "El promedio de estaturas es: ", promedioEstaturas
    Sino
        Escribir "No se ingresaron estaturas."
    FinSi
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio26
	//26) Realizar un algoritmo para generar e imprimir los números pares comprendidos entre 0 y 100 
    Definir numero Como Entero
	
    Para numero <- 0 Hasta 100 Con Paso 2 Hacer
        Escribir numero
    FinPara
	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

funcion ejercicio27
	//27) Realizar un programa que realice la suma sucesiva de 10 números que ingrese por teclado, presente el resultado de la suma acumulada. 
    Definir suma, numero, contador Como Entero
	
    suma <- 0
    contador <- 0
	
    Mientras contador < 10 Hacer
        Escribir "Ingresa un número: "
        Leer numero
		
        suma <- suma + numero
        contador <- contador + 1
    FinMientras
	
    Escribir "La suma acumulada de los 10 números es: ", suma
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//
Funcion ejercicio28
	//Se requiere un algoritmo para obtener la edad promedio de un grupo de N alumnos
	// Ent: definir las variables 
	//Pro: edad de un grupo de alumnos 
	//Sal: promedio de las edades 
	Definir N, i como Entero
    Definir Edad como Entero
    Definir SumaEdades como Real
    Definir EdadPromedio como Real
	
    Escribir "Ingrese la cantidad de alumnos (N): "
    Leer N
	
    SumaEdades <- 0  
	
    Para i <- 1 Hasta N Hacer
        Escribir "Ingrese la edad del alumno ", i, ": "
        Leer Edad
        SumaEdades <- SumaEdades + Edad
    FinPara
	
    // Calcular el promedio
    EdadPromedio <- SumaEdades / N
	
    Escribir "La edad promedio de los ", N, " alumnos es: ", EdadPromedio
	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio29
	//Una empresa tiene el registro de las horas y el valor hora que trabaja diariamente un empleado durante los 20 días del mes. Requiere determinar el total de éstas, así como el sueldo
	//que recibirá por las horas trabajadas. Realizar el algoritmo que resuelva este problema
	//Ent: HorasTrabajadas, ValorHora, Sueldo, TotalHoras, Dia
	//Pro: Para Dia <- 1 Hasta 20 Hacer
    //    Escribir "Día ", Dia
    //    Escribir "Ingrese las horas trabajadas: "
    //    Leer HorasTrabajadas
    //    Escribir "Ingrese el valor por hora: "
	//   Leer ValorHora
    //    TotalHoras <- TotalHoras + HorasTrabajadas
    //    Sueldo <- Sueldo + (HorasTrabajadas * ValorHora)
    //    Escribir "Total de horas trabajadas hasta el momento: ", TotalHoras
    //    Escribir "Sueldo acumulado hasta el momento: $", Sueldo
    //FinPara
	//Sal: Mostrar Total de horas trabajadas y el total a pagar el fin de mes
	
	Definir HorasTrabajadas, ValorHora, Sueldo, TotalHoras como Real
	Definir Dia Como Entero
    TotalHoras <- 0
    Sueldo <- 0
	
    Para Dia <- 1 Hasta 20 Hacer
        Escribir "Día ", Dia
        Escribir "Ingrese las horas trabajadas: "
        Leer HorasTrabajadas
        Escribir "Ingrese el valor por hora: "
        Leer ValorHora
		
        TotalHoras <- TotalHoras + HorasTrabajadas
        Sueldo <- Sueldo + (HorasTrabajadas * ValorHora)
		
        Escribir "Total de horas trabajadas hasta el momento: ", TotalHoras
        Escribir "Sueldo acumulado hasta el momento: $", Sueldo
    FinPara
	
    Escribir "Total de horas trabajadas en el mes: ", TotalHoras
    Escribir "Sueldo total a pagar en el mes: $", Sueldo
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio30
	//Un empleado de la tienda "Somos Más" realiza N ventas durante el día, se requiere saber cuántas de ellas fueron mayores a $1000, cuántas de ellas fueron mayores a $500 pero menores
	//o iguales a $1000, y cuantas fueron menores o iguales a $500. Además, se requiere saber el monto de lo vendido en cada categoría y de forma global. Realizar un algoritmo
	//Ent: ventas, monto, monto_mayor1000, monto_entre500_1000, monto_menorigual500, categoria
	//Pro: Para i desde 1 hasta ventas Hacer
    //    Escribir "Ingrese el monto de la venta ", i, ":"
    //    Leer monto
    //    Si monto > 1000 Entonces
    //        monto_mayor1000 <- monto_mayor1000 + monto
    //        categoria <- "Mayor a $1000"
    //    Sino
    //        Si monto > 500 Entonces
    //            monto_entre500_1000 <- monto_entre500_1000 + monto
    //            categoria <- "Entre $500 y $1000"
    //        Sino
    //            monto_menorigual500 <- monto_menorigual500 + monto
    //            categoria <- "Menor o igual a $500"
    //        Fin Si
    //    Fin Si
    //    Escribir "Venta ", i, " - Monto: $", monto, " - Categoría: ", categoria
    //Fin Para
	//Sal: Mostrar el total de ventas
	
	Definir ventas, monto, monto_mayor1000, monto_entre500_1000, monto_menorigual500 como Entero
    Definir categoria como Carácter
    ventas <- 0
    monto <- 0
    monto_mayor1000 <- 0
    monto_entre500_1000 <- 0
    monto_menorigual500 <- 0
    
    Escribir "Ingrese el número de ventas realizadas:"
    Leer ventas
    
    Para i desde 1 hasta ventas Hacer
        Escribir "Ingrese el monto de la venta ", i, ":"
        Leer monto
        
        Si monto > 1000 Entonces
            monto_mayor1000 <- monto_mayor1000 + monto
            categoria <- "Mayor a $1000"
        Sino
            Si monto > 500 Entonces
                monto_entre500_1000 <- monto_entre500_1000 + monto
                categoria <- "Entre $500 y $1000"
            Sino
                monto_menorigual500 <- monto_menorigual500 + monto
                categoria <- "Menor o igual a $500"
            Fin Si
        Fin Si
        
        Escribir "Venta ", i, " - Monto: $", monto, " - Categoría: ", categoria
    Fin Para
    
    Escribir "Total de ventas mayores a $1000: ", monto_mayor1000
    Escribir "Total de ventas entre $500 y $1000: ", monto_entre500_1000
    Escribir "Total de ventas menores o iguales a $500: ", monto_menorigual500
    
    total_ventas <- monto_mayor1000 + monto_entre500_1000 + monto_menorigual500
    Escribir "Monto total de ventas: $", total_ventas
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio31
	// Se dispone de las calificaciones de n alumnos del primer semestre
	//de la carrera de software de la unemi. Se tiene la nota final y la asignatura
	//('logica','requerimientos','calculos'). Se pide el promedio de
	//cada asignatura y el promedio general de todas las asignaturas de los alumnos del primer semestre.
	//Ent: n, i,nota_final, promedio_logica, promedio_requerimientos, promedio_calculos, promedio_general
	//Ent: suma_logica, suma_requerimientos, suma_calculos, suma_general, asignatura 
	//Pro: Para i desde 1 hasta n Hacer
    //    Escribir "Alumno ", i
    //    Escribir "Asignatura: Lógica"
    //    Escribir "Ingrese la nota final:"
    //    Leer nota_final
    //    suma_logica <- suma_logica + nota_final
    //    Escribir "Asignatura: Requerimientos"
    //    Escribir "Ingrese la nota final:"
    //    Leer nota_final
    //    suma_requerimientos <- suma_requerimientos + nota_final
    //    Escribir "Asignatura: Cálculos"
    //    Escribir "Ingrese la nota final:"
    //    Leer nota_final
    //    suma_calculos <- suma_calculos + nota_final
    //    suma_general <- suma_general + nota_final
    //    Escribir ""
    //Fin Para
	//Sal: Mostrar el promedio
	
	
	Definir n, i como Entero
    Definir nota_final, promedio_logica, promedio_requerimientos, promedio_calculos, promedio_general como Real
    Definir suma_logica, suma_requerimientos, suma_calculos, suma_general como Real
    Definir asignatura como Carácter
    
    Escribir "Ingrese la cantidad de alumnos:"
    Leer n
    
    suma_logica <- 0
    suma_requerimientos <- 0
    suma_calculos <- 0
    suma_general <- 0
    
    Para i desde 1 hasta n Hacer
        Escribir "Alumno ", i
        Escribir "Asignatura: Lógica"
        Escribir "Ingrese la nota final:"
        Leer nota_final
        suma_logica <- suma_logica + nota_final
        
        Escribir "Asignatura: Requerimientos"
        Escribir "Ingrese la nota final:"
        Leer nota_final
        suma_requerimientos <- suma_requerimientos + nota_final
        
        Escribir "Asignatura: Cálculos"
        Escribir "Ingrese la nota final:"
        Leer nota_final
        suma_calculos <- suma_calculos + nota_final
        
        suma_general <- suma_general + nota_final
        
        Escribir ""
    Fin Para
    
    promedio_logica <- suma_logica / n
    promedio_requerimientos <- suma_requerimientos / n
    promedio_calculos <- suma_calculos / n
    promedio_general <- suma_general / (n * 3)  // Se multiplica por 3 ya que hay 3 asignaturas
    
    Escribir "Promedio de la asignatura Lógica: ", promedio_logica
    Escribir "Promedio de la asignatura Requerimientos: ", promedio_requerimientos
    Escribir "Promedio de la asignatura Cálculos: ", promedio_calculos
    Escribir "Promedio general de todas las asignaturas: ", promedio_general	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio32
	Definir sueldo, bono, promedio_sueldo_auxiliar, promedio_sueldo_agregado, promedio_sueldo_principal, promedio_bono_auxiliar, promedio_bono_agregado, promedio_bono_principal Como Real
    Definir categoria Como Cadena
	
    sueldo = 0
    bono = 0
    promedio_sueldo_auxiliar = 0
    promedio_sueldo_agregado = 0
    promedio_sueldo_principal = 0
    promedio_bono_auxiliar = 0
    promedio_bono_agregado = 0
    promedio_bono_principal = 0
    categoria = ""
	
    Escribir "Ingresa los sueldos y categorías de los profesores (Para terminar, ingresa una categoría inexistente)."
	
    Mientras categoria <> "Auxiliar" Y categoria <> "Agregado" Y categoria <> "Principal" Hacer
        Escribir "Sueldo del profesor: "
        Leer sueldo
		
        Si categoria = "Auxiliar" Entonces
            bono = sueldo * 0.10
            promedio_sueldo_auxiliar = promedio_sueldo_auxiliar + sueldo
            promedio_bono_auxiliar = promedio_bono_auxiliar + bono
        Sino
            Si categoria = "Agregado" Entonces
                bono = sueldo * 0.20
                promedio_sueldo_agregado = promedio_sueldo_agregado + sueldo
                promedio_bono_agregado = promedio_bono_agregado + bono
            Sino
                Si categoria = "Principal" Entonces
                    bono = sueldo * 0.50
                    promedio_sueldo_principal = promedio_sueldo_principal + sueldo
                    promedio_bono_principal = promedio_bono_principal + bono
                FinSi
            FinSi
        FinSi
		
        Escribir "Categoría del profesor: "
        Leer categoria
    FinMientras
	
    Si promedio_sueldo_auxiliar > 0 Entonces
        promedio_sueldo_auxiliar = promedio_sueldo_auxiliar / (promedio_sueldo_auxiliar / sueldo)
        promedio_bono_auxiliar = promedio_bono_auxiliar / (promedio_bono_auxiliar / bono)
        Escribir "Promedio de sueldo de la categoría Auxiliar: ", promedio_sueldo_auxiliar
        Escribir "Promedio de bono de la categoría Auxiliar: ", promedio_bono_auxiliar
    FinSi
	
    Si promedio_sueldo_agregado > 0 Entonces
        promedio_sueldo_agregado = promedio_sueldo_agregado / (promedio_sueldo_agregado / sueldo)
        promedio_bono_agregado = promedio_bono_agregado / (promedio_bono_agregado / bono)
        Escribir "Promedio de sueldo de la categoría Agregado: ", promedio_sueldo_agregado
        Escribir "Promedio de bono de la categoría Agregado: ", promedio_bono_agregado
    FinSi
	
    Si promedio_sueldo_principal > 0 Entonces
        promedio_sueldo_principal = promedio_sueldo_principal / (promedio_sueldo_principal / sueldo)
        promedio_bono_principal = promedio_bono_principal / (promedio_bono_principal / bono)
        Escribir "Promedio de sueldo de la categoría Principal: ", promedio_sueldo_principal
        Escribir "Promedio de bono de la categoría Principal: ", promedio_bono_principal
    FinSi
	
	
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio33
	
	definir n, i como Entero
    Definir pasaje, recorrido, precio, suma_precio, promedio, cantidad_hasta100, cantidad_mas100 como Real
    
    Escribir "Ingrese la cantidad de viajes:"
    Leer n
    
    suma_precio <- 0
    cantidad_hasta100 <- 0
    cantidad_mas100 <- 0
    
    Para i desde 1 hasta n Hacer
        Escribir "Viaje ", i
        Escribir "Ingrese el recorrido en kilómetros:"
        Leer recorrido
        
        Si recorrido <= 100 Entonces
            precio <- pasaje
            cantidad_hasta100 <- cantidad_hasta100 + 1
        Sino
            precio <- pasaje + (pasaje * 0.2)  // Incremento del 20%
            cantidad_mas100 <- cantidad_mas100 + 1
        Fin Si
        
        Escribir "Precio del pasaje: ", precio
        suma_precio <- suma_precio + precio
        Escribir ""
    Fin Para
    
    promedio <- suma_precio / n
    
    Escribir "Promedio de precios: ", promedio
    Escribir "Cantidad de pasajes con recorrido hasta 100 km: ", cantidad_hasta100
    Escribir "Cantidad de pasajes con recorrido mayor a 100 km: ", cantidad_mas100
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio34
	
	Definir numero, cantidad_numeros, suma_numeros, promedio_numeros como Real
    
    cantidad_numeros <- 0
    suma_numeros <- 0
    
    Escribir "Ingrese un número (0 para terminar):"
    Leer numero
    
    Mientras numero <> 0 Hacer
        cantidad_numeros <- cantidad_numeros + 1
        suma_numeros <- suma_numeros + numero
        
        Escribir "Ingrese un número (0 para terminar):"
        Leer numero
    Fin Mientras
    
    promedio_numeros <- suma_numeros / cantidad_numeros
    
    Escribir "Cantidad de números distintos de cero: ", cantidad_numeros
    Escribir "Promedio de los números distintos de cero: ", promedio_numeros
FinFuncion
//------------------------------------------------------------------------------------------------------------------------------------//

Funcion ejercicio35
	
	Definir numero, cantidad_numeros, total_numeros como Entero
    
    cantidad_numeros <- 0
    total_numeros <- 0
    
    Escribir "Ingrese un número (negativo para terminar):"
    Leer numero
    
    Mientras numero >= 0 Hacer
        Si numero % 3 = 0 Entonces
            cantidad_numeros <- cantidad_numeros + 1
            total_numeros <- total_numeros + numero
        Fin Si
        
        Escribir "Ingrese un número (negativo para terminar):"
        Leer numero
    Fin Mientras
    
    Escribir "Cantidad de números positivos múltiplos de 3: ", cantidad_numeros
    Escribir "Total de los números positivos múltiplos de 3: ", total_numeros
FinFuncion

	

Algoritmo Tarea2_Grupal
	//ejercicio1
	//ejercicio2
	//ejercicio3
	//ejercicio4
	//ejercicio5
	//ejercicio6
	//ejercicio7
	//ejercicio8
	//ejercicio9
	//ejercicio10
	//ejercicio11
	//ejercicio12
	//ejercicio13
	//ejercicio14
	//ejercicio15
	//ejercicio16
	//ejercicio17
	//ejercicio18
	//ejercicio19
	//ejercicio20
	//ejercicio21
	//ejercicio22
	//ejercicio23
	//ejercicio24
	//ejercicio25
	//ejercicio26
	//ejercicio27
	//ejercicio28
	//ejercicio29
	//ejercicio30
	//ejercicio31
	//ejercicio32
	//ejercicio33
	//ejercicio34
	//ejercicio35
	
FinAlgoritmo
