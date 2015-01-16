// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tutorailTeam = 56
let editorailTeam = 23

//let totalTeam = tutorailTeam + editorailTeam
var totalTeam = tutorailTeam + editorailTeam

totalTeam += 1
let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let printExplicit:Double = -19.99

let priceFloatInferred = -19.99
let printFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"





//-----Array Var is Let
var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var shoppingListExplicit: [String] = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) item.")
shoppingList.append("Flour")
shoppingList.append += "Baking Powder"
shoppingList.append += ["Chocolate Spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bananas","Apples"]

