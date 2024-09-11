import extras.*
import wollok.game.*

object manzana {
	var property position = game.origin()
	method image(){
		return "manzana.png"
	}
	method siguiente(){
		return alpiste
	}
}

object alpiste {
	var property position = game.origin()
	method image(){
		return "alpiste.png"
	}
	method siguiente(){
		return silvestre
	}
}

