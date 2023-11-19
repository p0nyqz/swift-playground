//: [Previous](@previous)

import Foundation

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
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Apollo " + String(number) + " landed on the moon."

let missionMessage2 = "Apollo \(number) landed on the moon."

print("5 x 5 is \(5 * 5)")
