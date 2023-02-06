//
//  XNode.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/6/23.
//

import SpriteKit

class XNode: SKShapeNode {
    
    override init() {
        super.init()
    }
    
    convenience init(x: CGFloat, y: CGFloat) {
        self.init()
        let sqDimension: CGFloat = 30
        let centerOffset = sqDimension / 2
        
        let leadingEdgeStartPoint = CGPoint(x: x - centerOffset, y: y + centerOffset)
        let leadingEdgeEndPoint = CGPoint(x: x + centerOffset, y: y - centerOffset)
        
        let trailingEdgeStartPoint = CGPoint(x: x + centerOffset, y: y + centerOffset)
        let trailingEdgeEndPoint = CGPoint(x: x - centerOffset, y: y - centerOffset)
        
        let path = CGMutablePath()
        path.move(to: leadingEdgeStartPoint)
        path.addLine(to: leadingEdgeEndPoint)
        path.move(to: trailingEdgeStartPoint)
        path.addLine(to: trailingEdgeEndPoint)
        
        self.init(path: path)
        
        
        strokeColor = .primaryPink
        glowWidth = 4
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
