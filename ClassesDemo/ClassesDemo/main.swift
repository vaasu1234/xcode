

import Foundation

//NSObject -> NextStep Object
//NSObject -> UIResponder -> UIView -> UIControl -> UIButton

print("Hello World")

let enemy = Enemy(health:200, attackStrength: 20)
print(enemy.health)
enemy.move()

//objects both point to same reference
// structs copy creates new objects
// structs are passed around by values where as objects are passed around by reference
// structs are immutable
let enemy2 = enemy

let dragon = Dragon(health:200, attackStrength: 20)
print(dragon.attackStrength)
dragon.wingSpan = 10
dragon.talk(speech: "My teeth are swords")
dragon.move()
dragon.changeWingSpan()
