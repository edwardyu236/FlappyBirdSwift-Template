//
//  MainScene.swift
//  FlappySwift
//
//  Created by Edward Yu on 10/09/2015.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import UIKit

class MainScene: GamePlayScene {
    
    override func didLoadFromCCB() {
        super.didLoadFromCCB()
        userInteractionEnabled = true
        _gamePhysicsNode.collisionDelegate = self
        
        hero = CCBReader.load("Character") as? Character
        _gamePhysicsNode.addChild(hero)
    }
    
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        // move up and rotate
        hero?.flap()

        //resets the time so that the bird doesn't rotate immediately after jumping
        sinceTouch = 0
    }
}
