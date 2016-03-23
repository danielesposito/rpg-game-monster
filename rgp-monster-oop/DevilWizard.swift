//
//  DevilWizard.swift
//  rgp-monster-oop
//
//  Created by Daniel Esposito on 3/23/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import Foundation


class DevilWizard: Enemy {
    
    
    override var loot: [String]{
        
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        
        return "Devil Wizard"
    }

    
    
    
}