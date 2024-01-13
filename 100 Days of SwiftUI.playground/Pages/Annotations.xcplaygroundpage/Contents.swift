//: [Previous](@previous)

import Foundation

// Type Annotations
let surname:String = "Lasso"
var score:Int = 0
var otherScore: Double = 0

var playerName:String = "Roy"
var luckyNumber:Int = 13
let pi: Double = 3.141
var isAuthenticated = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Blues Eye", "Foundation", "Girl, Woman, Other"])

// Array with stings
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

// Empty array
var teams: [String] = [String]()
var cities: [String] = []
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
