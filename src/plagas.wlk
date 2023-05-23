class Cucarachas{
	var property pesoPromedio
	var property poblacion
	
	method transmiteEnfermedades()=  pesoPromedio >= 10 and enfermedad.transmiteEnfermedades(poblacion)
	method nivelDeDanio()= poblacion / 2

}

class Pulga{
	var property poblacion
	
	method transmiteEnfermedades()=   enfermedad.transmiteEnfermedades(poblacion)
	method nivelDeDanio()= poblacion *2

}

class Garrapata{
	var property poblacion
	
	method transmiteEnfermedades()=   enfermedad.transmiteEnfermedades(poblacion)
	method nivelDeDanio()= poblacion *2

}

class Mosquito{
	var property poblacion
	
	
	method transmiteEnfermedades()= poblacion % 3 == 0  and enfermedad.transmiteEnfermedades(poblacion)
	method nivelDeDanio()= poblacion

}




object enfermedad{
	
	method transmiteEnfermedades(poblacion)= poblacion >= 10
}