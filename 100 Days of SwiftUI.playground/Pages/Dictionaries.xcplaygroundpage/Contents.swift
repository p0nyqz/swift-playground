//: [Previous](@previous)

import Foundation

// optionals
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown" ])
print(employee["location", default: "Unknown"])

print(employee["password"])
print(employee["status"])
print(employee["manager"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]
print(hasGraduated["Eric"])

let olimpics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2020: "Tokyo"
]

print(olimpics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
// rewring keys with duplication case
archEnemies["Batman"] = "Penguin"
print(archEnemies["Batman", default: "Unknown"])

// count, removeAll()
print(heights.count)
heights.removeAll()
print(heights.count)

// error
// let abbreviations = ["m": "meters", "km": "kilometers"]
// let meters = abbreviations["m", default "m"]
