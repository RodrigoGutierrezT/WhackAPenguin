//
//  WhackSlot.swift
//  WhackAPenguin
//
//  Created by Rodrigo on 08-11-24.
//

import SpriteKit
import UIKit

class WhackSlot: SKNode {
    
    func configure(at position: CGPoint) {
        self.position = position
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        addChild(sprite)
    }
}
