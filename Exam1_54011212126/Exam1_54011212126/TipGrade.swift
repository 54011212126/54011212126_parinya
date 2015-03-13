//
//  TipGrade.swift
//  Exam1_54011212126
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
class gradeModel {
    //2
    var midterm: Double
    var score: Double
    var final: Double
    var total: Double{
        
        get {
            return midterm + (score+final)
        }
    }
    init(midterm:Double, score:Double, final:Double){
        self.midterm =
        self.score = taxPct
        self.final = taxPct
        
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) -> (tipAmt: Double, total:Double){
        let Total = subtotal * tipPct
        
        return (tipAmt, finalTotal)
    }
    
    //1
    func returnPossibleTips() ->[Int: (tipAmt: Double, total:Double)]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        // var numberOfItems = possibleTipsInferred.count
        
        //2
        var retval = Dictionary<Int, (tipAmt: Double, total:Double)>()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
            
        }
        
        return retval
    }
}