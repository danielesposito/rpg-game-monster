//
//  ViewController.swift
//  rgp-monster-oop
//
//  Created by Daniel Esposito on 3/23/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var player = Player(name: "Peter", hp: 100, attackPwr: 10)
    var enemy = Enemy(startingHp: 90, attackPwr: 2)
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        if player.hp > enemy.hp {
            
            
        
        }
        
    }

    

}

