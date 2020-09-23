import rodados.*
import pedidos.*
class Dependencia {

	const flota = []
	var property cantEmpleados
	const pedidos = []

	method agregarAFlota(rodado){ flota.add(rodado)}
	method quitarDeFlota(rodado){ flota.remove(rodado)}
	method pesoTotalFlota(){ return flota.sum({ f => f.peso()})}
	method estaBienEquipada(){ return flota.size() >= 3 and flota.all({ f => f.velMax() >= 100})}
	method capacidadTotalEnColor(color){return flota.filter({ f => f.color() == color}).sum({ f => f.capacidad()}) }
	method colorDelRodadoMasRapido() { return flota.max({ f => f.velMax()}).color() }
	method capacidadFaltante(){ return flota.sum({ f => f.capacidad()}) - cantEmpleados}
	method esGrande(){ return cantEmpleados >= 40 and flota.size() >= 5}
	
	method agregarPedido(nuevo){ pedidos.add(nuevo)}
	method quitarPedido(nuevo){ pedidos.remove(nuevo)}
	method totalPasajeros(){ return pedidos.sum({ p => p.cantPasajeros()}) }
//	method pedidosNoSatis(){ return pedidos.filter({ p => p.satisfacePedido(flota.)})}
	//method colorIncompatible(color){ return pedidos.all({ })
	
}
