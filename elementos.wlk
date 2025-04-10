object castillo {
  var nivelDeDefensa = 150
  
  method altura() { return 20}

  method nivelDeDefensa() { 
    return nivelDeDefensa
  }
  method recibirAtaque(valorDeAtaque) {
        nivelDeDefensa = 0.max(nivelDeDefensa - valorDeAtaque)
  }

    method recibirTrabajo() {
        nivelDeDefensa = 200.min(nivelDeDefensa + 20)
    }
    
    method otorgarValor() {
      return nivelDeDefensa / 5
    }
}

object aurora {
  var estaViva = true

  method altura() { return 1 }
  
  method estaViva() { 
    return estaViva
  }

   method recibirAtaque(valorDeAtaque) {
 if(valorDeAtaque >= 10) {
      estaViva = false
     
}
  }

    method recibirTrabajo() {}

      method otorgarValor() {
      return 15
    }
}

object tipa {
  var altura = 8
  method altura() {
    return altura
  }

   method recibirAtaque(valorDeAtaque) {}

     method recibirTrabajo() {
        altura = altura + 1
    }

      method otorgarValor() {
      return altura * 2
    }
}
