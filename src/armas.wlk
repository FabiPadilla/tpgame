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
	
	var property position = game.at(5,9)
	
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
	
	//var property alcance = 100
	
	method image() = "agujeroNegro.png"
	
	method colisionoCon(objetoVolador){
      objetoVolador.position(5,5)
      pikachu.image()
     //game.removeVisual(objetoVolador)
      //game.removeVisual(self)
    }
    
    }  
    
  object pikachu{
  	
   var property position = game.at(5,7)
  
  	method image() = "pikachuAsombrado.png"
  		
  	
  }
    