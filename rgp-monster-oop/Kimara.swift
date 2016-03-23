//
//  Kimara.swift
//  rgp-monster-oop
//
//  Created by Daniel Esposito on 3/23/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import Foundation



class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        
        return ["Tough Hide", "Kimara Venom", "Rare Tident"]
    }
    
    
    override var type: String {
        
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        
        if attackPwr >= IMMUNE_MAX {
            
            return super.attemptAttack(attackPwr)
            
        } else {
            
            return false
        }
    }
}