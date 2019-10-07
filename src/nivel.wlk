import nave.*
import movimiento.*
import wollok.game.*
import armas.* 

object nivel {

    method configurete() {
	
	// LIMITES DEL JUEGO
	game.title("GameSpace")
	game.height(10)
	game.width(10)
//    // FONDO
	game.boardGround("suelo.png")
    // VISUALES
	//game.addVisual(nave)
	game.addVisual(bomba)
	game.addVisual(misil)
	game.addVisual(agujero)
	
	
	
	game.addVisualCharacter(nave)
	//movimiento.configurarFlechas(nave)
	//game.addVisualIn(bomba, game.at ( 0, 1 ))
	//game.addVisualIn(misiles, game.at ( 5, 3 ))
	game.whenCollideDo( nave,{arma =>arma.colisionoCon(nave)})
	
	}
	//method configurarColisiones(){
	//	game.whenCollideDo( nave,{arma =>arma.colisionoCon(nave)})
	//}
	

}