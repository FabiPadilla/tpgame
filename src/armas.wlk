import wollok.game.*



object bomba {
	
	var property alcance = 100
	
	method image() = "bomba.png"
	
	method colisionaCon(objetoVolador){
	game.say(objetoVolador,"Nueva arma" + self.alcance())
	game.removeVisual(self)
    }
    //objetoVolador.armasQueTengo(self)

	

}


//class Misiles inherits Armas {
	
	
//	method image() = "misiles.png"
	
	
//}