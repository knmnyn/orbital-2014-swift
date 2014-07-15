let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam
totalTeam += 1

// Floats and Doubles
let priceInferred = 19.99
let priceExplicit: Double = 19.99

// Bools
let onSaleInferred = true
let onSaleExplicit: Bool = false

// Strings
let nameInferred = "Whoopie Cushion"
let nameExplicit: String = "Whoopie Cushion"

// println output is in the console output in the Assistant Editor
if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

/** Classes and Methods
*/
class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // method
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
/** Original Array version
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
//      for possibleTip in possibleTipsInferred {
        for i in 0..possibleTipsInferred.count {
            let possibleTip = possibleTipsInferred[i]
            println("\(possibleTip*100)%: \(calcTipWithTipPct(possibleTip))")
        }
    }
*/
    func returnPossibleTips() -> Dictionary<Int, Double> {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:Array<Double> = [0.15, 0.18, 0.20]
        
        // 2
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
// tipCalc.printPossibleTips()
tipCalc.returnPossibleTips()
