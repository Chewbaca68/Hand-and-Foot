//
//  StartScene.swift
//  Hand-and-Foot
//
//  Created by Brandon Baca on 12/8/15.
//  Copyright © 2015 Baca_Family. All rights reserved.
//

import Foundation


import SpriteKit


class StartScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let handandfoot = SKLabelNode(fontNamed:"Chalkduster")
        handandfoot.text = "Hand and Foot";
        handandfoot.fontSize = 60;
        handandfoot.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        let touchanywhere = SKLabelNode(fontNamed: "chalkduster")
        touchanywhere.text = "Touch anywhere to beign";
        touchanywhere.fontSize = 30;
        touchanywhere.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMinY(self.frame)+150);
        touchanywhere.fontColor = UIColor.redColor()
        
        //set background color of the startscene
        self.backgroundColor = UIColor.blackColor()
        
        //adds label to screen
        self.addChild(handandfoot)
        self.addChild(touchanywhere)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
        let mainscene = MainScene(size: self.size)
        let transition = SKTransition.flipHorizontalWithDuration(1.0)
        
        mainscene.scaleMode = SKSceneScaleMode.AspectFill
        
        self.scene?.view?.presentScene(mainscene, transition: transition)
        
        
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}