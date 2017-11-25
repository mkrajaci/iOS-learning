//: A UIKit based Playground for presenting user interface
  
import UIKit

//Fibonacci brojevi do odredenog indeksa

func fibbbbbb (index : Int) {
    print(0)
    print(1)
    var prviBroj = 0
    var drugiBroj = 1
    var treciBroj = 0
    for _ in 1...index {
        treciBroj = prviBroj + drugiBroj
        prviBroj = drugiBroj
        drugiBroj = treciBroj
        print(treciBroj)
    }
}

fibbbbbb(index: 20)

//for broj in (1...99).reversed() {
//    print("\(broj) boca je na zidu, kada oduzmes jednu ostane \(broj-1) boca na zidu")
//}
//print("Nema vise boca i krecemo iz pocetka")

//for broj in 1..<20 where broj % 2 == 0 {
//    print(broj)
//}

//let nizBrojeva = [2,3,1,4,5,6,4,6,8,9,0]
//var suma : Int = 0
//for broj in nizBrojeva {
//    suma += broj
//}
//print(suma)

//func bmiKalkulator (visina : Double, tezina : Double) -> String {
//    var bmi : Double
//    bmi = tezina / pow(visina, 2)
//
//    if bmi > 25 {
//        return "Na dijetu"
//    }
//
//    else if bmi >= 18.5 && bmi <= 25 {
//        return "Kak treba si"
//    }
//
//    else {
//        return "Mršav si"
//    }
//}
//
//print(bmiKalkulator(visina: 1.83, tezina: 72))

//func ljubavniKalkulator (tvojeIme : String, njenoIme : String) -> String {
//    let rezultat = Int(arc4random_uniform(101))
//
//    if rezultat > 80 {
//        return "Vas rezultat je \(rezultat). Super kompatibilni ste"
//    }
//
//    else if rezultat > 40 && rezultat <= 80{
//        return "Vas rezultat je \(rezultat). Ima šanse"
//    }
//
//    else {
//        return "Vas rezultat je \(rezultat). Nista od ljubavi"
//    }
//}
//
//print(ljubavniKalkulator(tvojeIme: "Mario", njenoIme: "Marija"))

