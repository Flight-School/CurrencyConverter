import Foundation
import Money

public protocol UnidirectionalCurrencyConverter {
    associatedtype Fixed: CurrencyType
    associatedtype Variable: CurrencyType
    
    var rate: Decimal { get set }
}

extension UnidirectionalCurrencyConverter {
    public func convert(_ value: Money<Fixed>) -> Money<Variable> {
        return Money<Variable>(value.amount * rate)
    }
}
