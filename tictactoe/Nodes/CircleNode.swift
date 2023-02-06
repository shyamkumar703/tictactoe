//
//  CircleNode.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/6/23.
//

import SpriteKit

class CircleNode: SKShapeNode {
    
    override init() {
        super.init()
    }
    
    convenience init(x: CGFloat, y: CGFloat) {
        self.init()
        let sqDim: CGFloat = 30
        self.init(ellipseIn: CGRect(x: x - sqDim / 2, y: y - sqDim / 2, width: sqDim, height: sqDim))
        fillColor = .clear
        strokeColor = .primaryRed
        glowWidth = 4
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
