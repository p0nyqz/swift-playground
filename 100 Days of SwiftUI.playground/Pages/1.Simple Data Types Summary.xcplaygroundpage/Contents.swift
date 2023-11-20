//: [Previous](@previous)

import Foundation

// Variables
var name = "Rob"
name = "Rebecca"
name = "Keeley"

// Constants
let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)



// Strings
let actor = "Denzel Washington"

let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote =  "Then he tapped a sign saying \"Believe\" and walked away."
let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

let nameLength = actor.count
print(nameLength)

print(result.uppercased())
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))


// String Concationation
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"


// String Interpolation
let name1 = "Taylor"
let age = 26
let message = "Hello, my name is \(name1) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Apollo " + String(number) + " landed on the moon."

let missionMessage2 = "Apollo \(number) landed on the moon."

print("5 x 5 is \(5 * 5)")



// Numbers
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

let number1 = 120
print(number1.isMultiple(of: 3))
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



// Booleans
let filename1 = "paris.jpg"
print(filename1.hasSuffix(".jpg"))

let number2 = 120
print(number2.isMultiple(of: 3))


let goodDog = true
var gameOver = false

let isMultiple = 120.isMultiple(of: 3)

// !
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// .toggle()
print(gameOver)
gameOver.toggle()
print(gameOver)



// Checkpoint 1: Celsius to Fahrenheit
let celsius = 36.5
let fahrenheit = celsius * 9/5 + 32
print("\(celsius)°C is \(fahrenheit)°F")
