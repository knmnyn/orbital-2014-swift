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