import UIKit


// Observer short notation
struct AudioChannel {
    static var maxVolume = 5
    var volume: Int {
        didSet {
            if volume > AudioChannel.maxVolume {
                volume = AudioChannel.maxVolume
            }
        }
    }
}

var LeftChannel = AudioChannel(volume: 2)
var RightChannel = AudioChannel(volume: 3)
RightChannel.volume = 6
print(RightChannel.volume)
print(AudioChannel.maxVolume)
AudioChannel.maxVolume = 10
print(AudioChannel.maxVolume)
RightChannel.volume = 8
print(RightChannel.volume)


// Propery types stored, computed
struct SomeStructure {
    static var storedTypeProperty = "Some value"
    static var computerTypeProperty: Int {
        return 1
    }
}
struct SomeEnumeration {
    static var storedTypeProperty = "Some value"
    static var computerTypeProperty: Int {
        return 2
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value"
    static var computerTypeProperty: Int {
        return 3
    }
    class var overridebleComputedTypeProperty:Int {
        return 4
    }
}

// Observers willSet, didSet
struct Circle {
    var coordinates: (x:Int, y:Int)
    var radius: Float {
        willSet(newValueOfRadius) {
            print("Вместо значения \(radius) будет установлено значение \(newValueOfRadius)")
        }
        didSet(oldValueOfRadius) {
            print("Значение \(oldValueOfRadius) изменено на \(radius)")
        }
    }
    var perimeter: Float {
        get { return 2.0 * 3.14 * radius }
        set { radius = newValue / (2 * 3.14) }
    }
}

var myNewCircle = Circle(coordinates: (0, 0), radius: 10)
myNewCircle.perimeter
myNewCircle.perimeter = 31.4
myNewCircle.radius

// Short syntax gettes & setters
//struct Circle {
//    var coordinates: (x:Int, y:Int)
//    var radius: Float
//    var perimeter: Float {
//        get { return 2.0 * 3.14 * radius }
//        set { radius = newValue / (2 * 3.14) }
//    }
//}
//
//var myNewCircle = Circle(coordinates: (0, 0), radius: 10)
//myNewCircle.perimeter
//myNewCircle.perimeter = 31.4
//myNewCircle.radius


// gettes & setters
//struct Circle {
//    var coordinates: (x:Int, y:Int)
//    var radius: Float
//    var perimeter: Float {
//        get {
//            // высчитываем значение, используя текущее значение радиуса
//            return 2.0 * 3.14 * radius
//        }
//        set (newPerimeter){
//            // изменим текущее значение радиуса
//            radius = newPerimeter / (2 * 3.14)
//        }
//    }
//}
//
//var myNewCircle = Circle(coordinates: (0, 0), radius: 10)
//myNewCircle.perimeter
//myNewCircle.perimeter = 31.4
//myNewCircle.radius




// Computed propertie
class Person {
    var firstName = "Имя"
    var secondName = "Фамилия"
    var wholeName: String { return "\(self.firstName) \(self.secondName)" }

    init(name: String, secondName: String) {
        ( self.firstName, self.secondName ) = ( name, secondName )
    }
}

var otherMan = Person(name: "Pony", secondName: "Quiz")
print(otherMan.wholeName)
otherMan.secondName = "Katusia"
print(otherMan.wholeName)

// Anonymous function in lazy var
//class Person {
//    var firstName = "Имя"
//    var secondName = "Фамилия"
//    lazy var wholeName: () -> String = { "\(self.firstName) \(self.secondName)" }
//
//    init(name: String, secondName: String) {
//        ( self.firstName, self.secondName ) = ( name, secondName )
//    }
//}
//
//var otherMan = Person(name: "Pony", secondName: "Quiz")
//print(otherMan.wholeName())
//print(otherMan.secondName = "Katusia")
//print(otherMan.wholeName())


/// generateName() function
//class Person {
//    var firstName = "Имя"
//    var secondName = "Фамилия"
//    lazy var wholeName: String = self.generateWholeName()
//
//    init(name: String, secondName: String) {
//        ( self.firstName, self.secondName ) = ( name, secondName )
//    }
//    func generateWholeName() -> String {
//        return firstName + " " + secondName
//    }
//}
//
//var me = Person(name: "Pony", secondName: "Quiz")
//print(me.wholeName, me.firstName, me.secondName)
