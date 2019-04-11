//
//  GameViewController.swift
//  SKShapeNode
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    /*
     呈现由Core Graphics路径定义的形状的节点
     **/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            let scene = GameScene.init(size: self.view.frame.size)
            scene.scaleMode = .aspectFill
            
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
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
