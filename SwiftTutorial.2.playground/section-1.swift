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
// 1
class TipCalculator {
    
    // 2
    let total: Double
    let taxPct: Double
    let subtotal: Double

    // 3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        println("15%: \(calcTipWithTipPct(0.15))")
        println("18%: \(calcTipWithTipPct(0.18))")
        println("20%: \(calcTipWithTipPct(0.20))")
    }
}

// 6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()
