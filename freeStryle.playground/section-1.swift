// Playground - noun: a place where people can play

import UIKit

var airport: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if airport.isEmpty{
				println("The airports dictionary is empty")
} else {
    println("The airports dictionary is not empty")
}
println("The airports dictionary contains\(airport.count) items.")

airport["LHR"] = "London"
airport["LHR"] = "London Heathrow"

if let oldValue = airport.updateValue("Dublin International", forKey: "DUB"){
				println("The old value for DUB was \(oldValue).")
}
airport["APL”"] = "Apple Intermational"
airport["APL"] = nil

if let removedValue = airport.removeValueForKey("DUB”"){
    println("The removed airport’s name is \(removedValue).")
}else{
    println("The airport dictionary does not contain a value for DUB.")
}