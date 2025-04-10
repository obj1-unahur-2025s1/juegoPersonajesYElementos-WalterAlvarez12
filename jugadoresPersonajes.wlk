import elementos.*
import armas.*

object floki {
    var arma = ballesta
    method encontrar(elemento) {
        if(arma.estaCarga()) {
        elemento.recibirAtaque(arma.potenciaDeAtaque())
        arma.registrarUso()
    }
    }
    method esGuerrero() { return true}
    
    method arma() {
        return arma
    }

    method arma(unArma) {
        arma = unArma
    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = aurora
    
    method encontrar(elemento) {
      valorRecolectado = valorRecolectado + elemento.otorgarValor()
      elemento.RecibirTrabajo()
      ultimoElemento = elemento
    }
    
    method esFeliz() {
        return valorRecolectado >= 50 or ultimoElemento.altura()
        >= 10

    }
}