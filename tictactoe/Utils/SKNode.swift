//
//  SKNode.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/6/23.
//

import SpriteKit

extension SKNode {
    func addGlow(color: SKColor, radius: Float = 30) {
        let effectNode = SKEffectNode()
        effectNode.shouldRasterize = true
        addChild(effectNode)
        let effect = SKSpriteNode()
        effect.color = color
        effect.colorBlendFactor = 1
        effectNode.addChild(effect)
        effectNode.filter = CIFilter(name: "CIGaussianBlur", parameters: ["inputRadius": radius])
    }
}
