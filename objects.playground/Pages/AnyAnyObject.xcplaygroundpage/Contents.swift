import UIKit

var things = [Any] ()
things.append(0)
things.append(0.0)
things.append(42)
things.append("hello")
things.append((3.0, 5.0))
things.append({ (name:String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Troll"))
    default:
        print("something else")
    
    }
}


// 2nd example
// super class
class Quadruped {
    var type = ""
    var name = ""
    func walk () {
        print("walk")
    }
}

// sub class
// override init() type = "dog"
class Dog: Quadruped {
    override init(){
        super.init()
        self.type = "dog"
    }
    func bark() {
        print("woof")
    }
    func printName(){
        print(self.name)
    }
}

// access to .bark() super class method from sub class
class NoisyDog: Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
}


var animalsArray: [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog()
var sadDog = NoisyDog()
animalsArray.append(someAnimal)
animalsArray.append(myDog)
animalsArray.append(sadDog)

let someObject: [AnyObject] = [Dog(), NoisyDog(), Dog()]

//for item in animalsArray {
//    if var animal = item as? NoisyDog {
//        animal.bark() // woof
//    } else if var animal = item as? Dog {
//        animal.bark() // woof woof woof
//    } else {
//        item.walk()  // walk
//    }
//}

//for object in someObject {
//    let animal = object as! Dog
//    print(animal.type)
//}

// save version
for object in someObject {
    guard let animal = object as? Dog else {
        continue
    }
    print(animal.type)
}

// type casting for whole Array
// FIXME! animal.type error
//for object in someObject as! [Dog] {
//    print(animal.type)
//}

// save version
//for object in (someObject as? [Dog]) ?? [] {
//    print(animal.type)
//}
