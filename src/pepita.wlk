import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var property position = game.at(0,game.height() - 1)
	var property seguidor = silvestre

	method image() {
		return if (self.estaEnElNido()) "pepita-grande.png" else if (self.position() == seguidor.position() or self.energia() <= 0) "pepita-gris.png" else "pepita.png" 
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.say(self, "La energia ahora es de: " + energia)
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
		if(not self.estaCansada()){
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
			game.say(self,"La energia de Pepita es: " + energia.max(0))
			}
		seguidor.position(game.at(self.position().x().max(2),0))
	}

	method caerUnaAltura(){
		if(self.position().y() > 0){
			position = self.position().down(1)
		}else{
			game.stop()
		}
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		
		return position == nido.position()
	}
	method interactuar(){
		if(not game.colliders(self).isEmpty()){
			game.uniqueCollider(self).interactuar(self)
		}
	}

	method interactuarColision(){
		if(not game.colliders(self).isEmpty()){
			game.uniqueCollider(self).interactuarColision(self)
		}
	}
}

