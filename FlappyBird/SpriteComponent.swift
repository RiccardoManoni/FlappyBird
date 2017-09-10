//
//  SpriteComponent.swift
//  FlappyBird
//
//  Created by Riccardo Manoni on 31/08/17.
//  Copyright © 2017 Riccardo Manoni. All rights reserved.
//

import SpriteKit
import GameplayKit

class EntityNode: SKSpriteNode {
    
}

class SpriteComponent: GKComponent {
    let node: EntityNode
    
    init(entity: GKEntity, texture: SKTexture, size: CGSize) {
        node = EntityNode(texture: texture, color: SKColor.white, size: size)
        node.entity = entity
        
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
