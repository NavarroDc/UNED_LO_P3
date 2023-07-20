Algoritmo Peaje_Matriz_PROYECTO3
	
//comentario	
Definir clase1, clase2, clase3, clase4, clase5 Como Entero;	
Definir matPrincipal, fil, col Como Entero;
Definir vecVehiculosClase, vecMontoClase Como Entero;
Definir eleccion Como Entero;
Definir eleccion1, eleccion2, eleccion3, eleccion4 Como Logico;
Definir TotalVehiculosClase Como Entero;
Definir VehiculosClase Como Entero;
Definir i Como Entero;

clase1<-420;
clase2<-840;
clase3<-1050;
clase4<-1860;
clase5<-2660;

eleccion1<-Falso;

Dimension matPrincipal(5,5);
Dimension vecVehiculosClase(5);
Dimension vecMontoClase(5);

Repetir
	Escribir "Digite el número de la opción seleccionada.";
	Escribir " ";
	Escribir "1 Inicialización de datos.";
	Escribir "2 Simulación del flujo vehicular.";
	Escribir "3 Informe general.";
	Escribir "4 Salir.";
	
	Leer eleccion;
	
	Segun eleccion Hacer
		1:
			//MATRIZ PRINCIPAL
			eleccion1<-Verdadero;
			Para fil<-0 Hasta 4 Con Paso 1 Hacer
				Para col<-0 Hasta 4 Con Paso 1 Hacer
					matPrincipal(fil, col)<-0;
				FinPara
			FinPara
			
			//VECTORES AUXILIARES
			Para fil<-0 Hasta 4 Con Paso 1 Hacer
				vecVehiculosClase(fil)<-0;
			FinPara
			
			Para fil<-0 Hasta 4 Con Paso 1 Hacer
				vecMontoClase(fil)<-0;
			FinPara
			
			Escribir "Datos inicializados correctamente.";
			
			Escribir "Presione cualquier tecla para continuar con el proceso.";
			Esperar Tecla;
			
			Limpiar Pantalla;
			
		2:
			//SE METEN LOS NÚMEROS RANDOM A LA MATRIZ
			Si eleccion1=Verdadero Entonces
				Para fil<-0 Hasta 4 Con Paso 1 Hacer
					Para col<-0 Hasta 4 Con Paso 1 Hacer
						matPrincipal(fil, col)<-azar(100)+1;
					FinPara
				FinPara
				Escribir "Línea    1  2  3  4  5";
				Escribir "-------------------------";
				
				//SE MUESTRA LA MATRIZ PRINCIPAL LLENA Y SE USA EL ACUMULADOR DE CARROS
				Para fil<-0 Hasta 4 Con Paso 1 Hacer
					Escribir "Clase ", fil + 1, "|", " " sin saltar;
					
					VehiculosClase<-0;
					
					Para col<-0 Hasta 4 Con Paso 1 Hacer
						VehiculosClase<-VehiculosClase + matPrincipal(fil, col);
						
						Escribir matPrincipal(fil, col), " " Sin Saltar;
						
					FinPara
					Escribir " ";
					
					vecVehiculosClase(fil) = VehiculosClase;
					
				FinPara
				
			SiNo
				Escribir "Error, debe seleccionar la opción 1 antes de continuar con la opción 2.";
			FinSi
			
			Escribir "Presione cualquier tecla para continuar con el proceso.";
			Esperar Tecla;
			
			Limpiar Pantalla;
			
		3:
			Escribir "Informe general.";
			Para i<-0 Hasta 4 Con Paso 1 Hacer
				Escribir "Clase ", i + 1, " ", vecVehiculosClase(i);
			FinPara
			
			
			
		4:  Escribir "Salir";
		De Otro Modo:
			escribir "deotormodo";
	FinSegun
Hasta Que eleccion = 4;

FinAlgoritmo
