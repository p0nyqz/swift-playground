import UIKit

// struct syntax
struct StructureName {
    //struct props and methods
    var prop1: String
    var prop2: UInt
}

// struct example
struct ChessPlayer {
    var name: String = "DefaultName"
    var victories: UInt = 0
    func describe(){
        print("The player \(name) has \(victories) victories")
    }
    mutating func addVictory(count:UInt = 1) {
        victories += count
    }
}

var playerOleg = ChessPlayer(name: "Oleg", victories: 32)
type(of:playerOleg)
print(playerOleg.name)
playerOleg.describe()

var playerKatusia = ChessPlayer(name: "Katusia", victories: 100)
print(playerKatusia.name)
playerKatusia.addVictory(count:3)
playerKatusia.describe()
