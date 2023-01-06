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
