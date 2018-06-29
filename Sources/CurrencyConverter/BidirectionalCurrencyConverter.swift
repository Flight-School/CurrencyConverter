import Foundation
import Money

public protocol BidirectionalCurrencyConverter: UnidirectionalCurrencyConverter {}

extension BidirectionalCurrencyConverter {
    public func convert(_ value: Money<Variable>) -> Money<Fixed> {
        return Money<Fixed>(value.amount / rate)
    }
}
