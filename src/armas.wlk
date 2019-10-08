import wollok.game.*
import nave.*



object bomba {
	
	var property position = game.at(3,2)
	
	var property alcance = 100
	
	method image() = "bomba.png"
	
	method colisionoCon(objetoVolador){
   
      game.say(objetoVolador,"bomba econtrada " + "de alcance : " + self.alcance())
      game.removeVisual(self)
      objetoVolador.juntarArma(self)
      
    
     }

//class Misiles inherits Armas {
}

object misil {
	
	var property position = game.at(5,9)
	
	var property alcance = 300
	
	
	method image() = "misiles.png"
	
	method colisionoCon(objetoVolador){
     game.say(objetoVolador,"misil encontrado " + "de alcance : " + self.alcance())
     game.removeVisual(self)
     }
     }
     
     
 object agujero {
	
	var property position = game.at(5,7)
	
	//var property alcance = 100
	
	method image() = "agujeroNegro.png"
	
	method colisionoCon(objetoVolador){
   
     //game.removeVisual(objetoVolador)
      //game.removeVisual(self)
     
   
    }
    
    }  
    
  object pikachu{
  	
   var property position = game.at(5,7)
  
  	method image() = "pikachuAsombrado.png"
  		
  	
  }
    