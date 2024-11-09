//
//  WhackSlot.swift
//  WhackAPenguin
//
//  Created by Rodrigo on 08-11-24.
//

import SpriteKit
import UIKit

class WhackSlot: SKNode {
    var charNode: SKSpriteNode!
    
    func configure(at position: CGPoint) {
        self.position = position
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
        
        let cropNode = SKCropNode()
        cropNode.position = CGPoint(x: 0, y: 15)
        cropNode.zPosition = 1
        // show the image of the child node that is inside the mask range
        cropNode.maskNode = SKSpriteNode(imageNamed: "whackMask")
        
        charNode = SKSpriteNode(imageNamed: "penguinGood")
        charNode.position = CGPoint(x: 0, y: -90)
        charNode.name = "character"
        // chardNode(penguin) gets added to cropNode as child
        cropNode.addChild(charNode)
        
        // then cropNode as a whole gets added to WhackSlot
        addChild(cropNode)
    }
}
