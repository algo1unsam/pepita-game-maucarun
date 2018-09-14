import pepita.*

object roque {
	var property posicion = game.at(6,6)
	var comidaActual = null
	
	method imagen() = "jugador.png"
	
	method levantar(comidaR){
		if (comidaActual!=null){
			game.addVisualIn(comidaActual, game.at(0.randomUpTo(10),0.randomUpTo(10)))
		}
		comidaActual=comidaR
		game.removeVisual(comidaR)
	}
	
	method colisionAve(ave){
		if (comidaActual!=null){
		ave.come(comidaActual)
		game.addVisualIn(comidaActual,game.at(0.randomUpTo(10),0.randomUpTo(10)))
		comidaActual=null
		}
	}
}
