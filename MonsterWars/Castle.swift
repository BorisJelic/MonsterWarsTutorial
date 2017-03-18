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
    
    init(imageName: String, team: Team) {
        super.init()
                      
        let spriteComponent = SpriteComponent(texture: SKTexture(imageNamed: imageName))
        addComponent(spriteComponent)
        addComponent(TeamComponent(team: team))
        addComponent(CastleComponent())
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
