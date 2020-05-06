/*:
## 练习 - 类成员构造器和引用

 - Note:(注)：\
下面的练习基于一个太空飞船避开太空障碍物的游戏。飞船位于坐标系的底部，当障碍物从上向下“坠落”时，飞船只能向左或向右移动。下面是为你提供的基类 `Spaceship` 以及子类 `Fighter` 和 `ShieldedShip`。你将使用它们来完成练习。
*/
class Spaceship {
    let name: String
    var health: Int
    var position: Int
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
    }
    init(name: String, health: Int, position: Int) {
           self.name = name
           self.health = health
           self.position = position
    }
}

class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
    init(weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
           self.weapon = weapon
           self.remainingFirePower = remainingFirePower
           super.init(name: name, health: health, position: position)
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
    init(shieldStrength: Int, weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
           self.shieldStrength = shieldStrength
           super.init(weapon: weapon, remainingFirePower: remainingFirePower, name: name, health: health, position: position)
    }
}
/*:
请注意，上面的每个类都有一个类声明错误，即“类没有构造器”。与结构不同，类没有自带的成员构造器，因为标准成员构造器有时会与继承有冲突。你可以通过为所有项提供默认值来消除该错误，但比较好的常见做法是编写自己的构造器。回到 `Spaceship` 的声明，添加一个构造器来接受 `Spaceship` 上每个属性的自变量，并相应地设置这些属性。 

然后创建一个名为 `falcon` 的 `Spaceship` 实例，如下所示。使用你刚刚创建的成员构造器。飞船的名字应该为“Falcon”。
*/
var falcon = Spaceship(name: "Falcon", health: 1, position: 1)



/*:
为子类编写构造器可能会很麻烦。所编写的构造器不仅需要设置子类上声明的属性，而且还需要设置该子类所继承自的那些类上所有未初始化的属性。回到 `Fighter` 的声明，编写一个构造器来接受 `Fighter` 上每个属性以及 `Spaceship` 上每个属性的自变量。相应地设置这些属性。（提示：你可以在初始化子类上的所有属性*之后*，使用 `super.init` 调用超类的构造器）。

然后创建一个名为 `destroyer` 的 `Fighter` 实例，如下所示。使用你刚刚创建的成员构造器。飞船的名字应该为“Destroyer”。
*/
var destroyer = Fighter(weapon: "a", remainingFirePower: 1, name: "Destroyer", health: 1, position: 2)
/*:
现在向 `ShieldedShip` 中添加一个构造器来接受 `ShieldedShip`、`Fighter` 和 `Spaceship` 上每个属性的自变量，并相应地设置这些属性。请记住，可以使用 `super.init` 在 `Fighter` 上调用该构造器。

然后创建一个名为 `defender` 的 `ShieldedShip` 实例，如下所示。使用你刚刚创建的成员构造器。飞船的名字应该为“Defender”。
*/
var defender = ShieldedShip(shieldStrength: 1, weapon: "q", remainingFirePower: 1, name: "Defender", health: 2, position: 3)

/*:
创建一个名为 `sameShip` 的新 `Spaceship` 实例，将其值设置为 `falcon`。输出 `sameShip` 和 `falcon` 的位置，然后对 `sameShip` 调用 `moveLeft()`，再输出 `sameShip` 和 `falcon` 的位置。两个位置都有变化吗？为什么？如果两个都是结构，而不是类，结果会一样吗？为什么一样，为什么不一样？通过注释或 print 语句提供你的答案，如下所示。
*/
var sameShip = falcon
print(sameShip.position)
print(falcon.position)
sameShip.moveLeft()
print(sameShip.position)
print(falcon.position)
//两个位置都有变化，位置一样，因为两个实例都是指向同一个position
/*:

_Copyright © 2017 Apple Inc._

_特此授予任何人免费获取本软件及相关文档文件（下文简称“本软件”）副本的权利，允许其无限制地处理本软件，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或出售本软件副本的权利，并允许本软件的合法用户这样做，但须符合以下条件：_

_上述版权声明和本许可声明应包含在本软件的所有副本或主要部分中。_

_本软件按其现状提供，不作任何明示或默示担保，包括但不限于对适销性、特定用途的适用性和不侵权的保证。在任何情况下，作者或版权所有者均不对因合同、侵权或其他由于使用或处理本软件而引起或与其相关的任何索赔、损害或其他责任负责。_
*/
//: [上一页](@previous)  |  第 4 页，共 4 页
