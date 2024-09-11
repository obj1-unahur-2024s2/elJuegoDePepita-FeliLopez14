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
	method energiaQueAporta(){
		return 50
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
	method energiaQueAporta(){
		return 50
	}
}

