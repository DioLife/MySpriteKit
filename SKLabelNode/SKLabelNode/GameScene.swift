//
//  GameScene.swift
//  SKLabelNode
//
//  Created by hello on 2019/4/10.
//  Copyright © 2019 Dio. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.lightGray
//        study1()
//        study2()
        study3()
    }
    
    /*
     垂直对齐
     垂直对齐的方式有三种对齐方式,如下图标所示.
     SKLabelHorizontalAlignmentModeCenter       相对于原点水平居中
     SKLabelHorizontalAlignmentModeLeft         左对齐
     SKLabelHorizontalAlignmentModeRight        右对齐
     **/
    func study3() {
        let sklabel = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel.text = "SaoDong"
        sklabel.horizontalAlignmentMode = .center //相对于原点水平居中(中心坚线与position的x重合)
        sklabel.fontSize = 40
        sklabel.position = CGPoint.init(x: size.width / 2, y: size.height - 200)
        self.addChild(sklabel)
        
        let sklabel2 = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel2.text = "SaoDong"
        sklabel2.horizontalAlignmentMode = .left //左对齐(最左边与position的x重合)
        sklabel2.fontSize = 40
        sklabel2.position = CGPoint.init(x: size.width / 2, y: size.height - 300)
        self.addChild(sklabel2)
        
        let sklabel3 = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel3.text = "SaoDong"
        sklabel3.horizontalAlignmentMode = .right //右对齐(最右边与position的x重合)
        sklabel3.fontSize = 40
        sklabel3.position = CGPoint.init(x: size.width / 2, y: size.height - 400)
        self.addChild(sklabel3)
    }
    
    /*
     SKLableNode 设置对齐方式
     使用position属性可以设置标签对象的为进行调整,但是如果设置标签的文本的相对位置呢?这时候就需要使用到标签的对齐方式,
     标签的对齐方式一共有两种一种是水平对齐,一种是垂直对齐.下面我们逐一看一下.
     1.水平对齐
     水平对齐我们主要设置的是SKLableNode的verticalAlignmentMode属性,水平对齐总共有4种方式.系统是以枚举的方式罗列的,
     如果不对其verticalAlignmentMode属性进行设置那么默认的是SKLabelVerticalAlignmentModeBaseline,
     种对齐方式的名称以及说明如下图表所示.
     SKLabelVerticalAlignmentModeBaseline    字体基线穿过原点
     SKLabelVerticalAlignmentModeCenter    相对于原点垂直居中
     SKLabelVerticalAlignmentModeTop    顶部对齐
     SKLabelVerticalAlignmentModeBottom    底部对齐
     **/
    func study2() {
        let size = self.frame.size
        
        let sklabel = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel.text = "SaoDong"
        sklabel.verticalAlignmentMode = .baseline //字体基线穿过原点
        sklabel.fontSize = 40
        sklabel.position = CGPoint.init(x: size.width / 2, y: size.height - 200)
        self.addChild(sklabel)
        
        let sklabel2 = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel2.text = "SaoDong"
        sklabel2.verticalAlignmentMode = .center //相对于原点垂直居中
        sklabel2.fontSize = 40
        sklabel2.position = CGPoint.init(x: size.width / 2, y: size.height - 300)
        self.addChild(sklabel2)
        
        let sklabel3 = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel3.text = "SaoDong"
        sklabel3.verticalAlignmentMode = .top //顶部对齐
        sklabel3.fontSize = 40
        sklabel3.position = CGPoint.init(x: size.width / 2, y: size.height - 400)
        self.addChild(sklabel3)
        
        let sklabel4 = SKLabelNode.init(fontNamed: "Chalkduster")
        sklabel4.text = "SaoDong"
        sklabel4.verticalAlignmentMode = .bottom //底部对齐
        sklabel4.fontSize = 40
        sklabel4.position = CGPoint.init(x: size.width / 2, y: size.height - 500)
        self.addChild(sklabel4)
    }
    
    func study1() {
        let sklabel = SKLabelNode.init()
        //记录x,y轴的位置信息
        sklabel.position = CGPoint(x: self.size.width / 2, y: self.size.height * 0.8)
        //记录z轴的位置信息
        //        sklabel.zPosition = 0
        //记录旋转角度信息
        //        sklabel.zRotation = 45
        //通过这个属性可以设置对象的字体
        sklabel.fontName = "Chalkduster"
        //对象的显示文本
        sklabel.text = "这是一段文字"
        //由于SKLableNode没有size这个属性的说法,所以SKLableNode对象的大小是由字体大小决定的
        sklabel.fontSize = 45
        //文本的颜色设置
        sklabel.fontColor = UIColor.green
        //控制之间的混合呈现的文本和颜色。值的有效间隔从0.0包括0.0。一个值高于或低于最低(0.0),间隔夹如果低于或最大(1.0)。
        //        sklabel.colorBlendFactor = 0.5
        self.addChild(sklabel)
    }
    
}
