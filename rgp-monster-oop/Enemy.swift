//
//  enemy.swift
//  rgp-monster-oop
//
//  Created by Daniel Esposito on 3/23/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import Foundation


class Enemy: Character {
    
    
    var loot: [String] {
        
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    
    var type: String {
        
        return "Grunt"
    }
    
    func droppedLoot() -> String? {
        
        if !isAlive {
            
            let randLoot = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[randLoot]
            
        }
            
            return nil

    }
    

//    private var _enemyName: String = "Bad Green Monster"
//    
//    var enemyName: String {
//        
//        get {
//            
//            return _enemyName
//        }
//    }
}