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
    // FONDO
	game.boardGround("suelo.png")
    // VISUALES
	
	game.addVisual(bomba)
	game.addVisual(misil)
	game.addVisual(agujero)

	game.addVisualCharacter(nave)
    game.onTick(800,"AGUJERO",{nave.caiEnAgujero(agujero)})
	game.whenCollideDo( nave,{arma =>arma.colisionoCon(nave)})
	//game.onTick()
	}

}