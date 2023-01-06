import UIKit

// class syntax
class ClassName {
    // class props and methods
}


class Chessman {
    // chessman type
    enum ChessmanType {
        case king, castle, bishop, pawn, knight, queen
    }

    // chessman color
    enum ChessmanColor {
        case black, white
    }

    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    
    init(type: ChessmanType, color:ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        figureSymbol = figure
    }
    
    init(type: ChessmanType, color:ChessmanColor, figure: Character, coordinates: (String, Int)) {
        self.type = type
        self.color = color
        figureSymbol = figure
        setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    
    // coordinates setup
    func setCoordinates(char c:String, num n:Int) {
        coordinates = (c, n)
    }
    
    // take a figure from board
    func kill(){
        coordinates = nil
    }
    
    func describe(){
        print("The chessman is \(type), \(color) color and symbol \(figureSymbol) and coordinates: \(String(describing: coordinates))")
    }
}

var kingWhite = Chessman(type:.king, color:.white, figure: "\u{2654}", coordinates: ("A", 6))
//kingWhite.setCoordinates(char: "E", num: 1)
kingWhite.describe()
