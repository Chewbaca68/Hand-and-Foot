//
//  Main_menu.swift
//  Hand-and-Foot
//
//  Created by Brandon Baca on 12/8/15.
//  Copyright © 2015 Baca_Family. All rights reserved.
//

import Foundation

import SpriteKit



class MainScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let mainlabel = SKLabelNode(fontNamed:"Chalkduster")
        mainlabel.text = "this is the main menu";
        mainlabel.fontSize = 60;
        mainlabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        let startgame = SKLabelNode(fontNamed: "Chalkduster")
        startgame.text = "Start Game"
        startgame.fontSize = 20;
        startgame.position = CGPoint(x: CGRectGetMinX(self.frame)+100, y:CGRectGetMaxY(self.frame)-150);
        startgame.color = UIColor.blackColor()
        
        
        
        
        //set background color of the startscene
        self.backgroundColor = UIColor.greenColor()
        
        //adds label to screen
        
        self.addChild(mainlabel)
        self.addChild(startgame)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
        
        let gamescene = GameScene(size: self.size)
        let transition = SKTransition.flipHorizontalWithDuration(1.0)
        
        gamescene.scaleMode = SKSceneScaleMode.AspectFill
        
        self.scene?.view?.presentScene(gamescene, transition: transition)
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}