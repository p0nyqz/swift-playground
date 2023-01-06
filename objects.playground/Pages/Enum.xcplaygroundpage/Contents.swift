import UIKit

// enum syntax
enum ИмяПеречисления {
  case значение1
  case значение2
  // other cases
}

// Enum examples
enum CurrencyUnit {
  case rouble
  case euro
}

//enum CurrencyUnit {
//  case rouble, euro
//}

var roubleCurrency: CurrencyUnit = .rouble
var otherCurrency = CurrencyUnit.euro
// поменяем значение одного из параметров на другой член перечисления
otherCurrency = .rouble

// значения не эквивалентны, разные типы данных
let currency1 = CurrencyUnit.rouble
// let currency2 = "rouble”


/// Countries currency
enum DollarCountries {
    case usa
    case canada
    case australia
}

enum AdvancedCurrencyUnit {
    case rouble(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
    case dollar(nation: DollarCountries, shortName: String)
}

var dollarCurrency: AdvancedCurrencyUnit = .dollar(nation: .usa, shortName: "USD")

switch dollarCurrency {
    case .rouble:print("Rouble")
    case let .euro(countries, shortname):print("Euro, Countries: \(countries). Краткое именование: \(shortname)")
    case .dollar(let nation, let shortname):print("Dollar, \(nation). Short description: \(shortname)")
}


/// Smiles enum
enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    // computed property
    var description: String {return self.rawValue}
    func about() {
        print ("Enum contains batch of smiles")
    }
    func descriptionValue() -> Smile {
        return self
    }
    func descriptionRawValue() -> String {
        return rawValue
    }
}

let iAmHappy = Smile.joy
print(iAmHappy.rawValue)

let mySmile:Smile = .sorrow
print(mySmile.description)
mySmile.about()

var otherSmile = Smile.joy
print(otherSmile.descriptionValue())
print(otherSmile.descriptionRawValue())


/// Simple Arithmetic Expression Recursion
enum ArithmeticExpression1 {
    case addition(Int, Int)
    case substraction(Int, Int)
    func evaluate() -> Int {
        switch self {
        case .addition(let left, let right):
            return left + right
        case .substraction(let left, let right):
            return left - right
        }
    }
}

let expr = ArithmeticExpression1.addition(10, 14).evaluate()
print(expr)

/// Complex Arithmetic Expression Recursion
enum ArithmeticExpression {
    case number( Int )
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
    func evaluate( _ expression: ArithmeticExpression? = nil) -> Int {
        switch expression ?? self {
        case let .number( value ):
            return value
        case let .addition(valueLeft, valueRight):
            return evaluate( valueLeft ) + evaluate( valueRight )
        case .subtraction( let valueLeft, let valueRight ):
            return evaluate( valueLeft ) - evaluate( valueRight )
        }
    }
}

let hardExpr = ArithmeticExpression
    .addition( .number(20),
    .subtraction( .number(10), .number(34)))
    .evaluate()
print(hardExpr)
