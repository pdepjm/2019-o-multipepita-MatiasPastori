object pepita {

	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method estaFeliz() {
		return energia.between(500, 1000)
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method cuantoQuiereVolar() {
		var kilometros = energia / 5
		if (energia.between(300, 400)) {
			kilometros += 10
		}
		if (energia % 20 == 0) {
			kilometros += 15
		}
		return kilometros
	}
	
	method entrenar(){
		self.vola(10)
		self.come(alpiste)
		self.vola(5)
		self.haceLoQueQuieras()
	}

	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method haceLoQueQuieras(){
		if(self.estaFeliz()){
			self.vola(5)
		}
		if(self.estaCansada()){
			self.come(alpiste)
		}
	}
		
}


object alpiste {

	var gramos = 10

	method energiaQueOtorga() {
		return 4 * gramos
	}

	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}

}

object mijo {

	var mojado = true

	method mojarse() {
		mojado = true
	}

	method secarse() {
		mojado = false
	}

	method energiaQueOtorga() {
		if (mojado) {
			return 15
		} else return 20
	}

}

object canelones {

	var salsa
	var queso
	var energia = 20

	method ponerSalsa() {
		salsa = true
	}
	
	method ponerQueso(){
		queso = true
	}
	
	method sacarQueso(){
		queso = false
	}
	
	method sacarSalsa(){
		salsa = false
	}
	
	method energiaQueOtorga() {
		if (salsa) {
			energia += 5
		}
		if (queso) {
			energia += 7
		}
	}

}

object roque {
	
	method entrenar(){
		pepita.entrenar()
	}
	
}

object manzana {

	method energiaQueOtorga() {
		return 50
	}

}



