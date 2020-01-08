import wollok.game.*
import nave.*

object bomba {
	
	var property position = game.at(3,2)
	
	var property alcance = 100
	
	method image() = "bomba.png"
	
	method colisionoCon(objetoVolador){
   
      game.say(objetoVolador," bomba econtrada " + " alcance : " + self.alcance())
      game.removeVisual(self)
      objetoVolador.juntarArma(self)
      
     }


}

object misil {
	
	var property position = game.at(9,6)
	
	var property alcance = 300
	
	
	method image() = "misiles.png"
	
	method colisionoCon(objetoVolador){
     game.say(objetoVolador,"misil encontrado " + " alcance : " + self.alcance())
     game.removeVisual(self)
     objetoVolador.juntarArma(self)
     }
     }
     
     
 object agujero {
	
	var property position = game.at(5,7)
	
	var property alcance = 100
	
	method image() = "agujeroNegro.png"
	
	method colisionoCon(objetoVolador){
	    if(position== objetoVolador.position()){
	  	game.removeVisual(self)
	  	game.removeVisual(objetoVolador)
	    game.addVisual(pikachu)
	    game.onTick(100,"ARMA",{game.say(pikachu,"Caiste en un agujero")})
	    objetoVolador.position()
	    }
	    
	    else{}
	    	  
	}
      //pikachu.image()
      //game.removeVisual(objetoVolador)
      //objetoVolador.position(5,5)
      //game.removeVisual(self)
    //}
    }  
    
  object pikachu{
  	
   var property position = game.at(5,7)
  
  	method image() = "pikachuAsombrado.png"
  }
    