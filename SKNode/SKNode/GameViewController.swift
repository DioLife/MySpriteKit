//
//  GameViewController.swift
//  SKNode
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    /*
     SKNode类是大多数SpriteKit内容的基本构建块。
     SKNode的子类列表
     SKNode大致包含几个大类,如下图表所示.
     类名称              功能简介
     SKSpriteNode       用于绘制精灵纹理
     SKVideoNode        用于播放视频
     SKLabelNode        用于渲染文本
     SKShapeNode        用于渲染基于Core Graphics 路径的形状
     SKEmitterNode      用于创建和渲染粒子系统
     SKCropNode         用于使用遮罩来裁剪子结点
     SKEffectNode       用于在子结点上使用Core Image滤镜
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
