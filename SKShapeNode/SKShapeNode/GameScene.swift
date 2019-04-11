//
//  GameScene.swift
//  SKShapeNode
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.orange
        study1()
    }
    
    func study1() {
        let size = self.size
        let path2 = CGPath.init(roundedRect: CGRect.init(x: size.width / 2, y: size.height / 2, width: 100, height: 100), cornerWidth: 50, cornerHeight: 50, transform: nil)
        //        let path1 = CGMutablePath()
        //        path1.addArc(center: CGPoint.init(x: size.width / 2, y: size.height / 2), radius: 15, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        let ball = SKShapeNode.init()
        ball.path = path2
        ball.lineWidth = 1 //线宽
        ball.strokeColor = .white //线的颜色
        ball.fillColor = .blue //填充颜色
        ball.glowWidth = 0.5
        self.addChild(ball)
    }
    
}
