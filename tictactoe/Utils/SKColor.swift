//
//  SKColor.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/6/23.
//

import SpriteKit

extension SKColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
    static var primaryRed = SKColor(red: 255, green: 50, blue: 26)
    static var primaryPink = SKColor(red: 226, green: 0, blue: 247)
}
