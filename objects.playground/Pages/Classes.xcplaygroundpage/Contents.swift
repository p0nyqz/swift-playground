import UIKit

// class syntax
class ClassName {
    // class props and methods
}

class Chessman {
    let type: String
    let color: String
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    
    init(type: String, color:String, figure: Character) {
        self.type = type
        self.color = color
        figureSymbol = figure
    }
    
    func describe(){
        print("The chessman is \(type), \(color) color and symbol \(figureSymbol)")
    }
}

var kingWhite = Chessman(type:"king", color:"white", figure: "\u{2654}")
kingWhite.describe()
