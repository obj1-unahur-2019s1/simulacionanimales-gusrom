import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"

	var property peso=200
	var property tieneSed=false
	
	method comer(kilos){
		peso+=kilos/2 
		tieneSed=true
		
	}
	method beber(){
		tieneSed=false
		peso=(peso -1).max(10)
	}
}

class Gallina{
	var property position = game.at(4,8)
	const property image = "gallina.gif"
	var vecesQueComio=0
	const peso=4
	var property tieneSed=false
	
	
	method comer(kilos){vecesQueComio++}
	method beber(){if(vecesQueComio==2 or vecesQueComio==5){tieneSed=true}
		else{tieneSed=false}
	}
	
	
	
	
	
}