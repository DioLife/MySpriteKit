//
//  GameScene.swift
//  SKS
//
//  Created by hello on 2019/5/27.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
//        addSpark()
//        addSmoke()
//        addBokeh()
//        addFire()
//        addFirefiles()
//        addMagic()
//        addRain()
        addSnow()
    }
    
    func addSpark() {
        let spark = SKEmitterNode.init(fileNamed: "Spark.sks")
//        spark?.particlePositionRange = CGVector.init(dx: 200, dy: 200)
        spark?.position = CGPoint.init(x: size.width / 2, y: size.height / 2)
        self.addChild(spark!)
    }
    
    func addSmoke() {
        let spark = SKEmitterNode.init(fileNamed: "Smoke.sks")
//        spark?.particlePositionRange = CGVector.init(dx: self.size.width, dy: 125)
        spark?.position = CGPoint.init(x: size.width / 2, y: 125)
        self.addChild(spark!)
    }
    
    func addBokeh() {
        let spark = SKEmitterNode.init(fileNamed: "Bokeh.sks")
        //        spark?.particlePositionRange = CGVector.init(dx: self.size.width, dy: 125)
        spark?.position = CGPoint.init(x: size.width / 2, y: 125)
        self.addChild(spark!)
    }
    
    func addFire() {
        let spark = SKEmitterNode.init(fileNamed: "Fire.sks")
//        spark?.particlePositionRange = CGVector.init(dx: 200, dy: 200)
        spark?.position = CGPoint.init(x: size.width / 2, y: size.height / 2)
        self.addChild(spark!)
    }
    
    func addFirefiles() {
        let spark = SKEmitterNode.init(fileNamed: "Firefiles.sks")
        spark?.particlePositionRange = CGVector.init(dx: 200, dy: 200)
        spark?.position = CGPoint.init(x: size.width / 2, y: size.height / 2)
        self.addChild(spark!)
    }
    
    func addMagic() {
        let spark = SKEmitterNode.init(fileNamed: "Magic.sks")
        spark?.particlePositionRange = CGVector.init(dx: 200, dy: 200)
        spark?.position = CGPoint.init(x: size.width / 2, y: size.height / 2)
        self.addChild(spark!)
    }
    
    func addRain() {
        let spark = SKEmitterNode.init(fileNamed: "Rain.sks")
//        spark?.particlePositionRange = CGVector.init(dx: ScreenWIDTH, dy: ScreenHEIGHT)
        spark?.position = CGPoint.init(x: ScreenWIDTH / 2, y: ScreenHEIGHT / 2)
        self.addChild(spark!)
    }
    
    func addSnow() {
        let spark = SKEmitterNode.init(fileNamed: "Snow.sks")
        spark?.particlePositionRange = CGVector.init(dx: 200, dy: 200)
        spark?.position = CGPoint.init(x: size.width / 2, y: size.height / 2)
        self.addChild(spark!)
    }
}
