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
	   return if(position== objetoVolador.position()){
	  	      // game.removeVisual(self)
	           game.onTick(100,"ARMA",{game.say(game.addVisual(pikachu),"Caiste en un agujero")})
	           //game.onTick(2000,"ARMA",{game.stop()})
	     
	           objetoVolador.position(game.at(8,8))
	           game.removeVisual(pikachu)
	           game.addVisual(self)
	           
	           }
	         else{}   	  
	}
}  
    
object pikachu{
  	
   var property position = game.at(5,7)
  
   method image() = "pikachuAsombrado.png"
}

object combustibles{

   var property position=game.at(0,5)
 
   method image()= "combustible.png"

    method colisonoCon(objetoVolador){
       return if(position== objetoVolador.position()){
	         objetoVolador.combustible(300)}
	         else{}   	  
    }
}
 
object dobleCanion{
	
	var property position = game.at(0,6)
	
	method image() = "dobleCanon.png"
}