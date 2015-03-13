// Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"


class grade {
    let mid: Int
    let score: Int
    let final: Int
    var symbols: String
    
    init (x:Int, y:Int, z:Int,sum:String){
        self.mid = x
        self.score = y
        self.final = z
        self.symbols = sum
    }
    func cal() ->Int{
        if(symbols == "+"){
            let x = add()
            return x
        }
      
        return 0
    }
    
    func add() ->Int{
        let total = mid + score + final
        return total
    }
    
}

let cal1 = grade(x: 30, y: 40, z:30, sum: "+")
cal1.cal()


//
//class calculator {
//    let intput1: Int
//    let intput2: Int
//    var symbols: String
//    
//    init (x:Int, y:Int, sum:String){
//        self.intput1 = x
//        self.intput2 = y
//        self.symbols = sum
//    }
//    func cal() ->Int{
//        if(symbols == "+"){
//            let x = add()
//            return x
//        }
//        if(symbols == "-"){
//            let x = del()
//            return x
//        }
//        if(symbols == "*"){
//            let x = mul()
//            return x
//        }
//        if(symbols == "/"){
//            let x = div()
//            return x
//        }
//        return 0
//    }
//    
//    func add() ->Int{
//        let total = intput1 + intput2
//        return total
//    }
//    
//    func del() ->Int{
//        let total = intput1 - intput2
//        return total
//    }
//    
//    func mul() ->Int{
//        let total = intput1 * intput2
//        return total
//    }
//    
//    func div() ->Int{
//        let total = intput1 / intput2
//        return total
//    }
//}
//
//let cal1 = calculator(x: 2, y: 5, sum: "+")
//cal1.cal()
//
//let cal2 = calculator(x: 12, y: 5, sum: "-")
//cal2.cal()
//
//let cal3 = calculator(x: 12, y: 2, sum: "*")
//cal3.cal()
//
//let cal4 = calculator(x: 12, y: 2, sum: "/")
//cal4.cal()
