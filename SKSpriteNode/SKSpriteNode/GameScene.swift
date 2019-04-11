//
//  GameScene.swift
//  SKSpriteNode
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        study1()
    }

    /*
     属性名称             类型                    功能简介
     position           CGPoint                 SKSpriteNode对象的x,y轴的位置信息
     zPosition          CGFloat                 SKSpriteNode对象的z轴位置,与ignoresSiblingOrder有关.如果
     ignoresSiblingOrder的值为YES,就是按照z轴的信息绘制,如果为NO,就是按照代码顺序绘制精灵.可以想象入图层类似.
     anchorPoint        CGPoint                 SKSpriteNode对象的锚点信息,锚点一般是与position配合使用的.
     锚点的相关知识,我的博客中有,如果有疑问,可以往前翻找
     zRotation          CGFloat                 SKSpriteNode对象的角度信息,通过设置他可以设置SKSpriteNode对象
     的旋转角度
     size               CGSize                  SKSpriteNode对象的宽度和高度信息的设置
     scale              CGFloat                 SKSpriteNode对象的大小缩放比例
     xScale             CGFloat                 SKSpriteNode对象的宽度大小缩放比例
     yScale             CGFloat                 SKSpriteNode对象的高度大小缩放比例
     name               NSString                SKSpriteNode对象的名字,也就是SKSpriteNode对象的唯一标识符
     physicsBody        SKPhysicsBody           SKSpriteNode对象在物理引擎中的物理模型
     speed              CGFloat                 KSpriteNode对象的速度
     alpha              CGFloat                 KSpriteNode对象的透明度
     hidden             BOOL                    KSpriteNode对象是否隐藏
     **/
    func study1() {
        //通过图片文件创建并返回一个纹理精灵
        let node = SKSpriteNode.init(imageNamed: "background1")
        node.position = .zero
        node.anchorPoint = .zero
        node.size = self.size
        node.zPosition = -1
        self.addChild(node)
        
        //通过纹理实例创建并返回一个纹理精灵。
        let sktexture = SKTexture.init(imageNamed: "zombie1")
        let people = SKSpriteNode.init(texture: sktexture)
        people.position = CGPoint.init(x: self.size.width / 2, y: self.size.height / 2)
        people.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        people.setScale(0.5)
        people.name = "people"
        self.addChild(people)
    }
    
}
