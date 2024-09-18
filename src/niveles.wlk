import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {

	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	}

}

object tutorial2 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	}

}

object tutorial3 {

	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarTicks()
		config.configurarColisiones()
		//schedule sirve para ejecutar un bloque de comandos una sola vez cuando pase cierto tiempo.
		game.schedule(1000, {game.say(pepita, "Hola Jugador")})

	}

}

object config {

	method configurarTeclas() {
		keyboard.left().onPressDo({if(pepita.position().x() > 0) {pepita.irA(pepita.position().left(1))}})
		keyboard.right().onPressDo({if(pepita.position().x() < game.width() - 1) {pepita.irA(pepita.position().right(1))}})
		keyboard.up().onPressDo({if(pepita.position().y() < game.height() - 1) {pepita.irA(pepita.position().up(1))}})
		keyboard.down().onPressDo({if(pepita.position().y() > 0) {pepita.irA(pepita.position().down(1))}})
		keyboard.c().onPressDo({pepita.interactuar()})
	}


	method configurarTicks(){
		game.onTick(800, "perder altura", {pepita.caerUnaAltura()})
	}


	method configurarColisiones(){
		game.onCollideDo(pepita, {algo => algo.interactuarColision(pepita)})
	}

	/*method cambiarSeguidor(){
		const seguidorActual = pepita.seguidor()
		const seguidorSiguiente = seguidorActual.siguiente()
		seguidorSiguiente.position(seguidorActual.position())
		game.removeVisual(seguidorActual)
		game.addVisual(seguidorSiguiente)
		pepita.seguidor(seguidorSiguiente)
	}
	*/
}

 