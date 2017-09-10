//
//  ObstacleEntity.swift
//  FlappyBird
//
//  Created by Riccardo Manoni on 02/09/17.
//  Copyright © 2017 Riccardo Manoni. All rights reserved.
//

import SpriteKit
import GameplayKit

class ObstacleEntity: GKEntity {
    var spriteComponent: SpriteComponent!
    
    init(imageName: String) {
        super.init()
        
        let texture = SKTexture(imageNamed: imageName)
        spriteComponent = SpriteComponent(entity: self, texture: texture, size: texture.size())
        addComponent(spriteComponent)
        
        // Add Physics
        let spriteNode = spriteComponent.node
        spriteNode.physicsBody = SKPhysicsBody(rectangleOf: spriteNode.size)
        spriteNode.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
        spriteNode.physicsBody?.collisionBitMask = 0 // not using it so we set it to zero
        spriteNode.physicsBody?.contactTestBitMask = PhysicsCategory.Player // to know when the player and the obstacle collide
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
