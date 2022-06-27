//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Vasu Pasupuleti on 6/19/22.
//

import Foundation

// structs cannot inherit
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech:String) {
        print("Says:\(speech)")
    }
    
    override func move() {
        print("Fly Forward")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage")
    }
    
    func changeWingSpan() {
        wingSpan = wingSpan + 2
    }
    
}
