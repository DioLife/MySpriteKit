//
//  GameScene.swift
//  SKPhysicsBody
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var zombie:SKSpriteNode!
    
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.orange
//        zombieNode()
        cubeNode()
    }
    
    //添加五角星
    func cubeNode() {
        //设置重力
        self.physicsWorld.gravity = CGVector.init(dx: 2.2, dy: -9.8)
        //设置边界
        self.physicsBody = SKPhysicsBody.init(edgeLoopFrom: CGRect.init(x: self.frame.origin.x, y: self.frame.origin.y, width: self.size.width, height: self.size.height))
        
        let cubeNode = SKSpriteNode.init(imageNamed: "star")
        cubeNode.position = CGPoint.init(x: self.size.width / 2, y: self.size.height / 2 + 100)
        cubeNode.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        cubeNode.zPosition = 1;
        cubeNode.name = "cubeNode"
        self.addChild(cubeNode)
        
        let cubeNode2 = SKSpriteNode.init(imageNamed: "star")
        cubeNode2.position = CGPoint.init(x: self.size.width / 2, y: self.size.height / 2)
        cubeNode2.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        cubeNode2.zPosition = 1;
        cubeNode2.name = "cubeNode2"
        self.addChild(cubeNode2)
    }
    //将五角星绑定
    /*
     类                         功能
     SKPhysicsJointFixed        固定联合在某个参考点混合两个主体在一起.固定联合用于创建以后可以打散的复杂形状
     SKPhysicsJointSliding      滑动联合允许两个主体的锚点沿选定的轴滑动
     SKPhysicsJointSpring       弹簧联合就想弹簧那样,它的长度是两个主体之间的初始距离
     SKPhysicsJointLimit        界限联合限定了两个主体之间的最大距离,就想它们使用绳子连接那样
     SKPhysicsJointPin          针联合与必须两个主体独立地绕锚点旋转,就像钉在一起那样
     **/
    func bindingNode(touches: Set<UITouch>, with event: UIEvent?) {
        let cubeNode:SKSpriteNode = self.childNode(withName: "cubeNode") as! SKSpriteNode
        cubeNode.physicsBody = SKPhysicsBody.init(rectangleOf: cubeNode.size)
        let cubeNode2:SKSpriteNode = self.childNode(withName: "cubeNode2") as! SKSpriteNode
        cubeNode2.physicsBody = SKPhysicsBody.init(rectangleOf: cubeNode2.size)
        
        let springPhysicsJoint = SKPhysicsJointSpring.joint(withBodyA: cubeNode.physicsBody!, bodyB: cubeNode2.physicsBody!, anchorA: cubeNode.position, anchorB: cubeNode2.position)
        springPhysicsJoint.damping = 0.01 //弹簧的阻尼
        springPhysicsJoint.frequency = 2.0 //弹簧的振动频率
        self.physicsWorld.add(springPhysicsJoint)//将绑定后的组合加到物理世界
        
        
//        let fixed = SKPhysicsJointFixed.joint(withBodyA: cubeNode.physicsBody!, bodyB: cubeNode2.physicsBody!, anchor: cubeNode.position)
//        self.physicsWorld.add(fixed)
        
        
//        let sliding = SKPhysicsJointSliding.joint(withBodyA: cubeNode.physicsBody!, bodyB: cubeNode2.physicsBody!, anchor: cubeNode.position, axis: CGVector.init(dx: 1000.0, dy: 0.0))
//        sliding.lowerDistanceLimit = 10
//        self.physicsWorld.add(sliding)

        
//        let joinlimit = SKPhysicsJointLimit.joint(withBodyA: cubeNode.physicsBody!, bodyB: cubeNode2.physicsBody!, anchorA: cubeNode.position, anchorB: cubeNode2.position)
//        joinlimit.maxLength = 100
//        self.physicsWorld.add(joinlimit)
        
        
//        let pin = SKPhysicsJointPin.joint(withBodyA: cubeNode.physicsBody!, bodyB: cubeNode2.physicsBody!, anchor: cubeNode.position)
//        pin.rotationSpeed = 10
//        self.physicsWorld.add(pin)
    }
    
    
    func zombieNode() {
        //设置重力
        self.physicsWorld.gravity = CGVector.init(dx: 0.0, dy: 0.0)
        //设置边界
        self.physicsBody = SKPhysicsBody.init(edgeLoopFrom: CGRect.init(x: self.frame.origin.x, y: self.frame.origin.y, width: self.size.width, height: self.size.height))
        
        zombie = SKSpriteNode.init(imageNamed: "zombie1")
        zombie.position = CGPoint.init(x: 20, y: self.size.height / 2)
        zombie.anchorPoint = CGPoint.init(x: 0.5, y: 0.5)
        zombie.zPosition = 1
        zombie.setScale(0.3)
        zombie.name = "zombie"
        self.addChild(zombie)
    }
    /*
     SKPhysicsBody的受力移动
     SKPhysicsBody对象不同于SKSpriteNode对象.SKSpriteNode对象可以通过添加动作来进行移动,
     SKPhysicsBody对象却没有移动这一说法,那么我们该如何移动SKPhysicsBody对象呢?
     这就需要我们使用到力的作用.用力让物理体产生运动效果.下面我们看一下给物理体添加作用力的方法.
     
     方法                                                        功能
     - (void)applyForce:(CGVector)force;                        施加一个均匀作用于物理体的拉力
     - (void)applyTorque:(CGFloat)torque;                       施加一个作用于物理体的侧向推力
     - (void)applyImpulse:(CGVector)impulse;                    施加一个均匀作用于物理体的推力
     - (void)applyAngularImpulse:(CGFloat)impulse;              向物理体施加一个角推力
     **/
    func applyForce() {
        let size = self.zombie.size
        zombie.physicsBody = SKPhysicsBody.init(rectangleOf: size)
        zombie.physicsBody?.restitution = 0
        zombie.physicsBody?.applyForce(CGVector.init(dx: 1000, dy: 0))
//        zombie.physicsBody?.applyTorque(1)
//        zombie.physicsBody?.applyImpulse(CGVector.init(dx: 1000, dy: 0))
//        zombie.physicsBody?.applyAngularImpulse(0.05)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        applyForce()
        bindingNode(touches: touches, with: event)
    }
    
}
