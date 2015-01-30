// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class TipCalculator {
    
  
    let total: Int
    let taxPct: Int
    let subtotal: Int
    
   
    init(total:Int, taxPct:Int){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 2)
    }
    
 
    func calcTipWithTipPct(tipPct:Int) ->Int{
        return subtotal * tipPct
    }
    
    

    func returnPossibleTips()->[Int: Int]{
        let possibleTipsInferred = [15, 8, 2]
        let possibleTipsExplicit:[Int] = [15, 8, 2]
    
        var retval = [Int: Int]()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip * 10)
          
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 2)
tipCalc.returnPossibleTips()
