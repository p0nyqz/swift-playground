//: [Previous](@previous)

import Foundation

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
