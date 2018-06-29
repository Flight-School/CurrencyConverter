import Money
import CurrencyConverter

let EURtoUSD = CurrencyPair<EUR, USD>(rate: 1.17) // as of June 1st, 2018

let euros: Money<EUR> = 123.45
let dollars = EURtoUSD.convert(euros).rounded
