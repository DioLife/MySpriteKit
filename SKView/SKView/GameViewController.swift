//
//  GameViewController.swift
//  SKView
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    /*
     SpriteKit内容被放置在一个窗口中，就像其他的视觉内容一样。 SpriteKit内容由SKView类呈现。SKView对象呈现的内容称为场景，即SKScene对象。场景参与响应者链responder chain，并具有其他功能，使其适合游戏。
     
     SKView 显示SpriteKit内容的对象。 这个内容由SKScene对象提供。
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
