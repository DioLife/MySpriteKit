//
//  GameScene.swift
//  SKTextureAtlas
//
//  Created by hello on 2019/5/27.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.white
        test(name: "panda")
//        test(name: "hero")
    }
    
    func test(name:String) {
        let textureAtlas = SKTextureAtlas.init(named: name)
        var allTextureArray = Array<SKTexture>()
        for i in 1...textureAtlas.textureNames.count {
            let textureName = String.init(format: "%d", i)
            let texture = textureAtlas.textureNamed(textureName)
            allTextureArray.append(texture)
        }
        
        let robot = SKSpriteNode.init(texture: allTextureArray[0])
        robot.position = CGPoint(x: ScreenWIDTH / 2, y: ScreenHEIGHT / 2)
        self.addChild(robot)
        
        let animationAction = SKAction.animate(with: allTextureArray, timePerFrame: 0.1)
        robot.run(SKAction.repeatForever(animationAction))
    }
    
}
