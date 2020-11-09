import XCTest
@testable import CurrencyConverter
import Money

final class CurrencyPairTests: XCTestCase {
    let EURtoUSD = CurrencyPair<EUR, USD>(rate: 1.17) // as of June 1st, 2018
    
    func testConvertTo() {
        let euros: Money<EUR> = 123.45
        let dollars = EURtoUSD.convert(euros).rounded

        XCTAssertEqual(dollars.amount, Decimal(string: "144.44"))
    }

    func testConvertFrom() {
        let dollars: Money<USD> = 123.45
        let euros = EURtoUSD.convert(dollars).rounded
        
        XCTAssertEqual(euros.amount, Decimal(string: "105.51"))
    }
}
