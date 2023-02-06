//
//  GameScene.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/5/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var board: BoardNode?
    var boardOrigin: CGPoint?
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        let boardOrigin = CGPoint(x: frame.midX - 120, y: frame.midY + 120)
        let boardNode = BoardNode(dim: 3, topLeft: boardOrigin)
        boardNode.delegate = self
        addChild(boardNode)
        self.board = boardNode
        self.boardOrigin = boardOrigin
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let touchLocation = touch.location(in: self)
        if let boardNode = nodes(at: touchLocation).compactMap({ $0 as? BoardNode }).first,
           let boardOrigin = boardOrigin {
            boardNode.handleTap(at: touch.location(in: boardNode), origin: boardOrigin)
        }
    }
}

// MARK: - BoardNodeDelegate Conformance
extension GameScene: BoardNodeDelegate {
    func placeMarker(at center: CGPoint) {
        let node = XNode(x: center.x, y: center.y)
        addChild(node)
    }
    
    
}
