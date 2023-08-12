import PlaygroundSupport
import UIKit

// working area size
let sizeOfArea = CGSize(width: 400, height: 400)
// create instance
var area = SquareArea(size: sizeOfArea, color: UIColor.black)

area.setBalls(withColors: [#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)], andRadius: 30)
// put instance like current displayeble value 
PlaygroundPage.current.liveView = area
