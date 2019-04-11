//
//  GameScene.swift
//  SKAudioNode
//
//  Created by hello on 2019/4/11.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.orange
        //        study1()
        study2()
    }
    
    func study2() {
        let soundAction = SKAction.playSoundFileNamed("music.mp3", waitForCompletion: false)
        self.run(soundAction)
    }
    
    func study1() {
        let audioNode = SKAudioNode(fileNamed: "music.mp3")
        audioNode.autoplayLooped = false
        self.addChild(audioNode)
        audioNode.run(SKAction.play())
    }
    
}
