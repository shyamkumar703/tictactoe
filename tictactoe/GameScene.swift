//
//  GameScene.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/5/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = .black
        let node = SKShapeNode(rectOf: CGSize(width: 100, height: 100))
        node.position = CGPoint(x: frame.midX, y: frame.midY)
        node.fillColor = .white
        self.addChild(node)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
