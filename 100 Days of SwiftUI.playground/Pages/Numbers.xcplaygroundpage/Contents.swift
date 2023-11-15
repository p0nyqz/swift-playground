//: [Previous](@previous)

import Foundation

let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let suartedScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter += 5    //counter = counter + 5
print(counter)
// compound assignment operators
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// Decimal numbers, Floating-point number, Double
let numbers = 0.1 + 0.2
print(numbers)

let a = 1
let b = 2.0
let c = a + Int(b)
let d = Double(a) + b

var rating = 5.0
rating *= 2
