//
//  Quirk.swift
//  MonsterWars
//
//  Created by Boris Jelic on 18/3/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class Quirk : GKEntity {
    
    init(team: Team) {
        super.init()
        let texture = SKTexture(imageNamed: "quirk\(team.rawValue)")
        let spriteComponent = SpriteComponent(texture: texture)
        addComponent(spriteComponent)
        addComponent(TeamComponent(team: team))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
