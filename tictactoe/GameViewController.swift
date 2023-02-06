//
//  GameViewController.swift
//  tictactoe
//
//  Created by Shyam Kumar on 2/5/23.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var gameView = SKView(frame: UIScreen.main.bounds)
    var scene = GameScene()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Setup
    
    func setupView() {
        scene.scaleMode = .resizeFill
        gameView.ignoresSiblingOrder = true
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        
        view.addSubview(gameView)
        gameView.presentScene(scene)
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
