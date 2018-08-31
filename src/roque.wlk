import pepita.*

object roque {
	var property posicion = game.at(6,6)
	var comidaActual = null
	
	method imagen() = "jugador.png"
	
	method levantar(comida){
		
		comidaActual=comida
		game.removeVisual(comida)
	}
	
	method colisionPepita(){
		pepita.come(comidaActual)
		game.addVisualIn(comidaActual,game.at(x, y))
	}
}
