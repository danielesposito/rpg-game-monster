//
//  ViewController.swift
//  rgp-monster-oop
//
//  Created by Daniel Esposito on 3/23/16.
//  Copyright © 2016 Daniel Esposito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var printlabel: UILabel!
    @IBOutlet weak var playerHpLabel: UILabel!
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var attackButton: UIButton!
    
    
    //Variables
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chestButton.hidden = true
        
        player = Player(name: "Dirty Laundry 21", hp: 100, attackPwr: 15)
        
        playerHpLabel.text = "\(player.hp) HP"
        
        
        generateRandomEnemy()
        
    }

    
    func generateRandomEnemy() {
        
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            
            enemy = Kimara(startingHp: 120, attackPwr: 12)
            
            enemyHpLabel.text = "\(enemy.hp) HP"
            
            printlabel.text = "Press attack button to attack \(enemy.type)"
            
            
        } else {
            
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
            
            enemyHpLabel.text = "\(enemy.hp) HP"
            
            printlabel.text = "Press attack button to attack \(enemy.type)"
            
        }
        
        enemyImage.hidden = false
        
        attackButton.enabled = true
        
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        
        chestButton.hidden = true
        printlabel.text = chestMessage
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }
    
    @IBAction func onAttackPressed(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            
            printlabel.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
            
            enemyHpLabel.text = "\(enemy.hp) HP"
            
            
            
        } else {
            
            printlabel.text = "Attack was unsuccessful!"
        }
        
        if let loot = enemy.droppedLoot() {
            
            player.addItemToInventory(loot)
            
            chestMessage = "\(player.name) found \(loot)"
            chestButton.hidden = false
            
//            printlabel.text = chestMessage
        }
        
        if !enemy.isAlive {
            
            enemyHpLabel.text = ""
            enemyImage.hidden = true
            printlabel.text = "Killed \(enemy.type)!"
            attackButton.enabled = false
            
        }
        
    }

}

