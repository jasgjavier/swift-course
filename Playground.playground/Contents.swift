import Foundation 

var caracteristicasNumero : String = ""

for i in 0...100{

caracteristicasNumero = "\(i)"

if (i % 5) == 0 && i != 0{
    caracteristicasNumero = caracteristicasNumero + " - Bingo!!!"
}

if (i % 2) == 0 {
    caracteristicasNumero = caracteristicasNumero + " - par!!!"
} else {
    caracteristicasNumero = caracteristicasNumero + " - impar!!!"
}

if  30...40 ~= i {
    caracteristicasNumero = caracteristicasNumero + " - Viva Swift!!!"
}

print(caracteristicasNumero)


}