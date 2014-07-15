//
//  TipCalculatorModel.swift
//  
//
//  Created by Min-Yen Kan on 15/7/14.
//
//

import Foundation

/** Classes and Methods
*/
class TipCalculatorModel {
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> Dictionary<Int, Double> {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:Array<Double> = [0.15, 0.18, 0.20]
        

        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)

            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
}


