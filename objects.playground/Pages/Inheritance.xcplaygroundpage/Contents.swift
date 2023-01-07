import UIKit

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

// override func
// class NoisyDog: Dog {
//    override func bark() {
//        print ("woof")
//        print ("woof")
//        print ("woof")
//    }
//}

var dog = Dog()
var badDog = NoisyDog()
dog.name = "Dragon Wan Helsing"
print(dog.type)
dog.printName()
dog.walk()
dog.bark()
badDog.bark()

var animalsArray: [Quadruped] = []
var someAnimal = Quadruped()
var myDog = Dog()
var sadDog = NoisyDog()
animalsArray.append(someAnimal)
animalsArray.append(myDog)
animalsArray.append(sadDog)
print(animalsArray)

for item in animalsArray {
    if item is Dog {
        print("Yap")
    }
}

for item in animalsArray {
    if var animal = item as? NoisyDog {
        animal.bark() // woof
    } else if var animal = item as? Dog {
        animal.bark() // woof woof woof
    } else {
        item.walk()  // walk
    }
}
