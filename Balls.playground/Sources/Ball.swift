import UIKit

protocol BallProtocol {
    init(color: UIColor, radius: Int, coordinates: (x: Int, y: Int))
}

public class Ball: UIView, BallProtocol {
    required public init(color: UIColor, radius: Int, coordinates: (x: Int, y: Int)) {
        // create graphical rectangle
        super.init(frame:
                CGRect(x: coordinates.x,
                       y: coordinates.y,
                       width: radius * 2,
                       height: radius * 2))
        // rounded corners
        self.layer.cornerRadius = self.bounds.width / 2.0
        // change background color
        self.backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
