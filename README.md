# CurrencyConverter

[![Build Status][build status badge]][build status]

Utilities for doing currency conversion with the
[Money](https://github.com/flight-school/money) library.

This functionality is discussed in Chapter 3 of
[Flight School Guide to Swift Numbers](https://flight.school/books/numbers).

## Requirements

- Swift 4.0+

## Installation

### Swift Package Manager

Add the CurrencyConverter package to your target dependencies in `Package.swift`:

```swift
import PackageDescription

let package = Package(
  name: "YourProject",
  dependencies: [
    .package(
        url: "https://github.com/Flight-School/CurrencyConverter",
        from: "1.0.0"
    ),
  ]
)
```

Then run the `swift build` command to build your project.

### Carthage

To use `CurrencyConverter` in your Xcode project using Carthage,
specify it in `Cartfile`:

```
github "Flight-School/CurrencyConverter" ~> 1.0.0
```

Then run the `carthage update` command to build the framework,
and drag the built CurrencyConverter.framework into your Xcode project.

## Usage

A [currency pair](https://en.wikipedia.org/wiki/Currency_pair)
describes the relative value of one currency in terms of another.
You can create a `CurrencyPair` object with a specified exchange rate
to convert from a monetary amount in one currency to the other:

```swift
let EURtoUSD = CurrencyPair<EUR, USD>(rate: 1.17) // as of June 1st, 2018

let euros: Money<EUR> = 123.45
let dollars = EURtoUSD.convert(euros).rounded // "$144.44"
```

> **Note**: This library doesn't include functionality
> for querying the current exchange rates of currencies.
> You can get this information from various third party web applications.

To only allow conversion in one direction,
create a type that conforms to the `UnidirectionalCurrencyConverter` protocol.
If you want to offer different rates depending on the direction of conversion
(that is, a rate going from variable to fixed
that isn't the inverse of going the other way)
create a type that conforms to the `BidirectionalCurrencyConverter` protocol.

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))

[build status]: https://github.com/Flight-School/CurrencyConverter/actions?query=workflow%3ACI
[build status badge]: https://github.com/Flight-School/CurrencyConverter/workflows/CI/badge.svg
