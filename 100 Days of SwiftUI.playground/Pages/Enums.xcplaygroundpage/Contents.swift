//: [Previous](@previous)

import Foundation

// Enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

enum Month {
    case jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
}

var months = Month.jan
months = .feb
months = .mar
