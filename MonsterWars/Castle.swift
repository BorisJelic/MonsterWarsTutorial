//
//  Castle.swift
//  MonsterWars
//
//  Created by Boris Jelic on 18/3/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class Castle : GKEntity {
    
    init(imageName: String, team: Team, entityManager: EntityManager)  {
        super.init()
                      
        let spriteComponent = SpriteComponent(texture: SKTexture(imageNamed: imageName))
        addComponent(spriteComponent)
        addComponent(TeamComponent(team: team))
        addComponent(CastleComponent())
        addComponent(MoveComponent(maxSpeed: 0, maxAcceleration: 0, radious: Float(spriteComponent.node.size.width / 2), entityManager: entityManager))
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
