class Corsa {
	var color
	
	method capacidad(){ return 4}
	method velMax(){ return 150}
	method peso(){ return 1300}
	method setColor(nuevo){ color = nuevo}
	method color(){return color}
	
}
class Kwid {
	var tieneTanqueAd  = true
	
	method tieneTanque(){ tieneTanqueAd = true }
	method noTieneTanque() { tieneTanqueAd = false}
	method capacidad(){ return if (not tieneTanqueAd) {4} else { 3}}
	method velMax(){ return if (not tieneTanqueAd) {110} else {120}}
	method peso(){ return if (not tieneTanqueAd) {1200} else {1200 + 150}}
	method color(){ return azul}
}

object traffic {
	var interior
	var motor
	
	method setMotor(nuevo){ motor = nuevo}
	method motor(){ return motor}
	method setInterior(nuevo){ interior = nuevo}
	method interior(){ return interior}
	method capacidad(){ return interior.capacidad()}
	method velMax(){ return motor.velMax()}
	method peso(){ return interior.peso() + motor.peso() + 4000}
	method color(){ return blanco}
}

object interiorComodo{
	
	method capacidad(){ return 5}
	method peso(){ return 700}
}

object interiorPopular {
	
	method capacidad(){ return 12}
	method peso() { return 1000}
}

object motorPulenta {
	
	method peso() { return 800}
	method velMax(){ return 130}
}

object motorBataton{
	
	method peso(){ return 500}
	method velMax(){ return 80}
}

class AutosEspeciales {
	var property capacidad
	var property velMax
	var property peso
	var property color	
	
}

object azul{}
object rojo {}
object verde{}
object blanco{}
object negro{}
