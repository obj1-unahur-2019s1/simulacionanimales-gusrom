import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"

	var property peso=200
	var property tieneSed=false
	
	method comer(kilos){
		if (self.tieneHambre()){
		peso+=kilos/2 
		tieneSed=true
		}else{
			self.error("No tengo hambre che")
		}
	}
	method beber(){
		tieneSed=false
		peso=(peso -1).max(10)
	}
	method tieneHambre(){
		return peso<200
	}
	method movimiento(){
		if(peso==50){
			self.error("No puedo caminar")
		}
		else{peso=50.max(peso*0.95)}
	}
	method subir(){
		self.movimiento()
		position=self.position().up(1)
	}
	method bajar(){
		self.movimiento()
		position=self.position().down(1)
	}
	method aLaDerecha(){
		self.movimiento()
		
		position=self.position().right(1)
	}
	method aLaIzquierda(){
		self.movimiento()
		position=self.position().left(1)
	}
}

class Gallina{
	var property position = game.at(4,8)
	const property image = "gallina.gif"
	var vecesQueComio=0
	const property peso=4

	
	method beber(){}
	method comer(kilos){vecesQueComio++}
	method tieneSed(){return(vecesQueComio==2 or vecesQueComio==5)}
	method tieneHambre(){return vecesQueComio%2==0}
	method movimiento(){}
		method subir(){
		position=self.position().up(1)
	}
	method bajar(){
		position=self.position().down(1)
	}
	method aLaDerecha(){
		
		position=self.position().right(1)
	}
	method aLaIzquierda(){
		position=self.position().left(1)
	}
	
	
	
	
	
	
}