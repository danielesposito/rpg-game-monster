//
//  player.swift
//  rgp-monster-oop
//
//  Created by Daniel Esposito on 3/23/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import Foundation


class Player: Character {
    
    
    private var _name: String = "Player"
    
    var name: String {
        
        get {
            
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {

            return _inventory

    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
        
    }
}