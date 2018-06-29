import Foundation
import Money

public struct CurrencyPair<Fixed, Variable>: BidirectionalCurrencyConverter where Fixed: CurrencyType, Variable: CurrencyType {
    public var rate: Decimal
    
    public init(rate: Decimal) {
        precondition(rate > 0)
        self.rate = rate
    }
}

extension CurrencyPair: CustomStringConvertible {
    public var description: String {
        return "\(Fixed.code)/\(Variable.code) \(rate)"
    }
}
