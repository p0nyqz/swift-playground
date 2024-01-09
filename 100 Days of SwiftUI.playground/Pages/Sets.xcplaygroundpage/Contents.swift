//: [Previous](@previous)

import Foundation

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
