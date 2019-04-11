//
//  GameViewController.swift
//  SKSpriteNode
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    /*
     绘制矩形纹理，图像或颜色的节点。
     **/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let skView = self.view as! SKView? {
            let scene = GameScene.init(size: view.bounds.size)
            
            scene.scaleMode = .aspectFill
            
            skView.presentScene(scene)
            
            skView.ignoresSiblingOrder = true
            
            skView.showsFPS = true
            skView.showsNodeCount = true
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
