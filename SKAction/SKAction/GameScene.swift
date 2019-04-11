//
//  GameScene.swift
//  SKAction
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var zombie:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.orange
        zombieNode()
    }
    
    //添加重复动作
    func repeatAction() {
        let fadIn = SKAction.fadeIn(withDuration: 0.5)
        let fadOut = SKAction.fadeOut(withDuration: 0.5)
        let list = SKAction.sequence([fadIn, fadOut])
        let repeatA = SKAction.repeatForever(list)
        zombie.run(repeatA)
    }
    
    //添加组动作的飞船
    func addGroupAction() {
        let move = SKAction.move(to: CGPoint(x: self.size.width, y: 0), duration: 1)
        let rotate = SKAction.rotate(toAngle: .pi * 2, duration: 1) //在duration旋转Angle
        let group = SKAction.group([move,rotate])
        zombie.run(group)
    }
    
    //添加一个序列动作的飞船
    func addListAction() {
        let move = SKAction.move(to: CGPoint(x: self.size.width / 2, y: self.size.height / 2), duration: 1)
        let zoom = SKAction.scale(to: 4, duration: 1)
        let wait = SKAction.wait(forDuration: 1) //wait:延时，控制序列的定时
        let fade = SKAction.fadeOut(withDuration: 1) //在duration时间内把alpha变为0
        let remove = SKAction.removeFromParent() //removeNode:瞬时动作，不会花费时间来执行
        let sequence = SKAction.sequence([move,zoom,wait,fade,remove])
        zombie.run(sequence)
    }
    
    //飞船添加一个往下飞行的动作
    func addAction() {
        let move = SKAction.moveTo(y: 10, duration: 1)
        zombie.run(move)
    }
    
    //SKAction的一些属性
    func actionInfo() {
        let scale = SKAction.scale(to: 1, duration: 10)
//        zombie.run(scale)
        //2.2 动作取消
//        zombie.removeAllActions()
        //2.3 动作完成回调,如果动作被移除，则回调不会执行
//        zombie.run(scale) {
//            print("动作已经完成!")
//        }
        /*
         2.4 动作命名
         通常情况下，我们不会移除全部动作，可能只是移除掉某一个动作，这时，我们就应该给动作命名，然后通过该名称来识别动作，
         然后对动作执行启动、移除、更换等操作。
         **/
        //该方法运行动作，会给动作添加上名称标识，如果已经存在相同名称，则该已经存在的动作会被先移除。
        zombie.run(scale, withKey: "id1")
        //根据名称获取动作
        zombie.action(forKey: "id1")
        //该方法用于移除动作。
        removeAction(forKey: "id1")
    }
    
    /*
     我们在点击方法内，给移动飞船添加一个带名称Move的动作，每次点击后会移动到点击的位置，同时，如果飞船正在移动，
     则会移除上一次正在移动的动作，执行新动作。
     **/
    func folowTouch(touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let move = SKAction.move(to: touch!.location(in: self), duration: 1)
        zombie.run(move, withKey: "Move")
    }
    
    
    
    //添加精灵
    func zombieNode() {
        let width = self.size.width
        let height = self.size.height
        
        zombie = SKSpriteNode.init(imageNamed: "zombie1")
        zombie.position = CGPoint.init(x: width * 0.2, y: height * 0.9)
        zombie.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        zombie.zPosition = 1
        zombie.setScale(0.3)
        zombie.name = "zombie"
        self.addChild(zombie)
        
        let zombie2 = SKSpriteNode.init(imageNamed: "zombie1")
        zombie2.position = CGPoint.init(x: width * 0.5, y: height * 0.9)
        zombie2.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        zombie2.zPosition = 1
        zombie2.setScale(0.3)
        zombie2.name = "zombie2"
        self.addChild(zombie2)
        
        let zombie3 = SKSpriteNode.init(imageNamed: "zombie1")
        zombie3.position = CGPoint.init(x: width * 0.8, y: height * 0.9)
        zombie3.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        zombie3.zPosition = 1
        zombie3.setScale(0.3)
        zombie3.name = "zombie3"
        self.addChild(zombie3)
    }
    /*
     timingMode(曲线方式属性)
     动作的曲线方式其实就是动画总体变化的时间曲线,动作的曲线方式的设置以及获取需要使用到timingMode这个一个属性,
     timingMode的取值一共有4个,如下表所示.
     
     曲线方式                                  功能
     SKActionTimingLinear                   动画在其持续时间内平均分布
     SKActionTimingEaseIn                   动画在开始的时候较慢,然后渐渐加快
     SKActionTimingEaseOut                  动画开始的时候较快,然后渐渐变慢
     SKActionTimingEaseInEaseOut            动画开始的时候慢,然后渐渐加速到中间,然后在渐渐变慢到完成
     
     
     speed属性可以改变动作执行速率，默认为1.0，如果设置成2.0，则动作执行时，速度快一倍。设置0则暂停动作。
     如果动作内包含别的动作组合，则会全部应用到设置的值。
     节点的speed属性与动作的speed属性具有相同效果。
     **/
    //执行动画
    func executeAction() {
        let zombieNode:SKSpriteNode = self.childNode(withName: "zombie") as! SKSpriteNode
        let moveAction = SKAction.moveTo(y: 0, duration: 2)
        //        moveAction.speed = 0.5 //设置速度
        moveAction.timingMode = .easeIn //设置曲线方式
        zombieNode.run(moveAction)
        
        let zombieNode2:SKSpriteNode = self.childNode(withName: "zombie2") as! SKSpriteNode
        let moveAction2 = SKAction.moveTo(y: 0, duration: 2)
        //        moveAction2.speed = 2
        moveAction2.timingMode = .easeOut
        zombieNode2.run(moveAction2)
        
        let zombieNode3:SKSpriteNode = self.childNode(withName: "zombie3") as! SKSpriteNode
        let moveAction3 = SKAction.moveTo(y: 0, duration: 2)
        //        moveAction3.speed = 2
        moveAction3.timingMode = .easeInEaseOut
        zombieNode3.run(moveAction3)
        
        print("动作一的所需时间:\(moveAction.duration)")
        print("动作二的所需时间:\(moveAction2.duration)")
        print("动作三的所需时间:\(moveAction3.duration)")
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        executeAction()
//        addAction()
//        actionInfo()
//        folowTouch(touches: touches, with: event)
//        addListAction()
//        addGroupAction()
        repeatAction()
    }
    
}
