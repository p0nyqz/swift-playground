import UIKit

class Person {
    var firstName = "Имя"
    var secondName = "Фамилия"
    lazy var wholeName: String = self.generateWholeName()
    
    init(name: String, secondName: String) {
        ( self.firstName, self.secondName ) = ( name, secondName )
    }
    func generateWholeName() -> String {
        return firstName + " " + secondName
    }
}

var me = Person(name: "Pony", secondName: "Quiz")
print(me.wholeName, me.firstName, me.secondName)
