// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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
