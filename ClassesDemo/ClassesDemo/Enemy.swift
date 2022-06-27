//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Vasu Pasupuleti on 6/19/22.
//

import Foundation

class Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health:Int, attackStrength:Int){
        self.health = health
        self.attackStrength =  attackStrength
    }
    
    //mutating keyword not needed for classes unlike structs
    func takeDamage(amount: Int){
        health = health - amount
    }
    
    func move() {
        print("Walk")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
    
    
}
