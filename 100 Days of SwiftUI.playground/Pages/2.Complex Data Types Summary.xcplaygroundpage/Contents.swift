
//: [Previous](@previous)

import Foundation

// Arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperature = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperature[1])

// var albums = Arrays<String>()
// var albums = [String]()
// var albums = ["Folklore"]
var albums = ["Folklore"]
albums.append("Fearless")
albums.append("Red")

// .append()
beatles.append("Adrian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// .count
print(albums.count)

// .remove(at:), .removeAll()
var characters = ["Lana", "Puma", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

// .contains()
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

// .sorted()
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

// .reverse()
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)



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


// Sets
let people = Set(["Danzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

// .insert()
var people2 = Set<String>()
people2.insert("Danzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicolas Cage")
people2.insert("Samuel L Jackson")

print(people2)

//sorted, count, contains
print(people2.count)
print(people2.sorted())
print(people2.contains("Tom Cruise"))



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



// Type Annotations
let surname:String = "Lasso"
var score:Int = 0
var otherScore: Double = 0

var playerName:String = "Roy"
var luckyNumber:Int = 13
let pi: Double = 3.141
var isAuthenticated = true
var myAlbums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Blues Eye", "Foundation", "Girl, Woman, Other"])

// Array with stings
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

// Empty array
var teams: [String] = [String]()
var countries: [String] = []
var clues = [String]()

enum UIStyle {
case light, dark, system
}

var style = UIStyle.light
style = .dark

let username:String
username = "@twostraws"
print(username)

//Error
//let score: Int = "Zero"
