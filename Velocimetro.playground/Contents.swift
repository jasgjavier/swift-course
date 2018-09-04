import Foundation 

enum Velocidades :Int {

    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    
    init ( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }

}

class Auto{

    var velocidad : Velocidades

    init(){
        self.velocidad = Velocidades.Apagado
    }

    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            return (Velocidades.Apagado.rawValue,"Apagado")
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            return (Velocidades.VelocidadBaja.rawValue,"Velocidad Baja")
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            return (Velocidades.VelocidadMedia.rawValue,"Velocidad Media")
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            return (Velocidades.VelocidadAlta.rawValue,"Velocidad Alta")
        }
        
    }

}

var auto = Auto()

for n in  1...20{
    var mensaje = auto.cambioDeVelocidad()
    print("\(mensaje.actual) , \(mensaje.velocidadEnCadena)")
   
}
