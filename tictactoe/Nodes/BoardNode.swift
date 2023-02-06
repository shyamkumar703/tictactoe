//
//  BoardNode.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/6/23.
//

import SpriteKit

protocol BoardNodeDelegate: AnyObject {
    func placeMarker(at center: CGPoint)
}

class BoardNode: SKShapeNode {
    var sqSize: CGFloat = 80
    weak var delegate: BoardNodeDelegate?
    
    override init() {
        super.init()
    }
    
    convenience init(dim: Int, topLeft: CGPoint) {
        self.init()
        
        let path = CGMutablePath()
        
        for x in 0..<dim {
            for y in 0..<dim {
                drawSpotFor(topLeft: topLeft, xCoord: x, yCoord: y, with: path)
            }
        }
        
        self.init(path: path)
        
        strokeColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func handleTap(at point: CGPoint, origin: CGPoint) {
        let xCoord = Int((point.x - origin.x) / 80)
        let yCoord = Int((origin.y - point.y) / 80)
        
        let topLeftOfNewSquareX = origin.x + sqSize * CGFloat(xCoord)
        let topLeftOfNewSquareY = origin.y - sqSize * CGFloat(yCoord)
        
        delegate?.placeMarker(
            at: CGPoint(
                x: topLeftOfNewSquareX + sqSize / 2,
                y: topLeftOfNewSquareY - sqSize / 2
            )
        )
    }
    
    private func drawSpotFor(topLeft: CGPoint, xCoord: Int, yCoord: Int, with path: CGMutablePath) {
        let topLeftOfNewSquareX = topLeft.x + sqSize * CGFloat(xCoord)
        let topLeftOfNewSquareY = topLeft.y - sqSize * CGFloat(yCoord)
        path.move(to: CGPoint(x: topLeftOfNewSquareX, y: topLeftOfNewSquareY))
        
        // down
        path.addLine(to: CGPoint(x: topLeftOfNewSquareX, y: topLeftOfNewSquareY - sqSize))
        // right
        path.addLine(to: CGPoint(x: topLeftOfNewSquareX + sqSize, y: topLeftOfNewSquareY - sqSize))
        // up
        path.addLine(to: CGPoint(x: topLeftOfNewSquareX + sqSize, y: topLeftOfNewSquareY))
        // left
        path.addLine(to: CGPoint(x: topLeftOfNewSquareX, y: topLeftOfNewSquareY))
    }
}
