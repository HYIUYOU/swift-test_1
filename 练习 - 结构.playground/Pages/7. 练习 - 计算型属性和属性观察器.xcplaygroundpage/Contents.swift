/*:
## 练习 - 计算型属性和属性观察器

下面的 `Rectangle` 结构有两个属性，一个用于宽度，一个用于高度。添加一个计算型属性来计算矩形的面积（即宽度 * 高度）。创建一个 `Rectangle` 实例，然后输出 `area` 属性。
*/
struct Rectangle {
   var width: Int
   var height: Int
    var area: Int {
        return width*height
        
    }
}
var a = Rectangle(width: 2, height: 3)
print(a.area)
/*:
在下面的 `Height` 结构中，高度以英寸和厘米表示。但是，如果 `heightInInches` 有更改，`heightInCentimeters` 也应该有相应的调整。为每个属性添加一个 `didSet`，让它们彼此检查对方的值是否正确，如果不正确，则设置正确的值。如果对方属性已有正确的值，但仍对其值进行设置的话，那么最终将得到一个无限循环，即属性之间彼此不停地设置对方的值。

创建一个 `Height` 实例，然后更改该实例的一个属性。输出另一个属性，以确保该属性得到了相应的调整。
*/
struct Height {
    var heightInInches: Double{
   didSet {
              let inCm = heightInInches*2.54
              if heightInCentimeters != inCm {
              heightInCentimeters = inCm
   }
        }
    }
    var heightInCentimeters: Double{
        didSet {
                   let inInches = heightInCentimeters/2.54
                   if heightInInches != inInches {
                       heightInInches = inInches
        }
    }
    }
   init(heightInInches: Double) {
       self.heightInInches = heightInInches
       self.heightInCentimeters = heightInInches*2.54
}
   
   init(heightInCentimeters: Double) {
       self.heightInCentimeters = heightInCentimeters
       self.heightInInches = heightInCentimeters/2.54
}
}
var b = Height(heightInInches: 2)
b.heightInInches
print(b.heightInCentimeters)
//: [上一页](@previous)  |  第 7 页，共 10 页  |  [下一页：App 练习 - 英里时间和祝贺信息](@next)
