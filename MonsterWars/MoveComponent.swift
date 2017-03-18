//
//  MoveComponent.swift
//  MonsterWars
//
//  Created by Boris Jelic on 18/3/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class MoveComponent : GKAgent2D, GKAgentDelegate {
    
    let entityManager: EntityManager
    
    init(maxSpeed: Float, maxAcceleration: Float, radious: Float, entityManager: EntityManager) {
        self.entityManager = entityManager
        super.init()
        delegate = self
        self.maxSpeed = maxSpeed
        self.maxAcceleration = maxAcceleration
        self.radius = radius
        print(self.mass)
        self.mass = 0.01
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    func agentWillUpdate(_ agent: GKAgent) {
        guard let spriteComponent = entity?.component(ofType: SpriteComponent.self) else {
            return
        }
        
        position = float2(spriteComponent.node.position)
        
    }
    
    func agentDidUpdate(_ agent: GKAgent) {
        guard let spriteComponent = entity?.component(ofType: SpriteComponent.self) else {
            return
        }
        
        spriteComponent.node.position = CGPoint(position)
    }
    
    
    
}
