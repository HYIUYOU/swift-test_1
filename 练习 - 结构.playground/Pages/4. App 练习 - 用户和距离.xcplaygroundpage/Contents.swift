/*:
## App 练习 - 用户和距离

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

大多数 app 都需要使用一个数据结构来保存用户相关信息。创建一个 `User` 结构，为其指定一些属性来表示用户的基本信息。至少应指定一些用来表示用户姓名、年龄、身高、体重和活跃程度的属性。具体可以将 `name` 设置为 `String`，将 `age` 设置为 `Int`，将 `height` 和 `weight` 设置为 `Double` 类型，将 `activityLevel` 设置为 `Int` 来表示用户的活跃程度并用 1-10 来评分。现在来实现此结构。
*/
struct User {
   var name: String
   var age: Int
   var height: Double
   var weight: Double
   var activityLevel: Int
}

/*:
创建一个 `User` 变量实例，以你的名字为其命名。使用成员构造器来传入有关你自己的信息。然后使用 `User` 实例的属性，输出该实例的描述信息。
*/
var jacob = User(name: "zhanwnshan", age: 20, height: 170, weight: 100, activityLevel: 4)
print("My name is \(jacob.name). I am \(jacob.age), weigh \(jacob.weight) lbs and am \(jacob.height) inches tall. On an activity scale from 1-10 I am probably a \(jacob.activityLevel).")

/*:
在先前的 app 练习中，你在健身跟踪 app 示例中使用的距离是一个简单数字。但是，距离可以用各种测量单位来表示。创建一个 `Distance` 结构来表示不同测量单位的距离。该结构至少应具有 `meters` 属性和 `feet` 属性。为每个属性创建对应的自定构造器，如果你只有两个属性，一个表示米，一个表示英尺，那么你需要创建两个构造器来接受其中一个测量单位的距离，然后为这两个测量单位分配正确的值。提示：*1 米 = 3.28084 英尺*。

<li class="- Example: ">（示例）：\
如果使用表示米的构造器传入距离 1600，那么该构造器应该会将 `meters` 设置为 1600，将 `feet` 设置为 5249.344。
*/
struct Distance {
   var meters: Double
   var feet: Double
   
   init(meters: Double) {
       self.meters = meters
       self.feet = meters*3.28084
}
   
   init(feet: Double) {
       self.feet = feet
       self.meters = feet/3.28084
}
}

/*:
现在创建一个名为 `mile` 的 `Distance` 实例。使用表示米的构造器将距离设置为 1600。输出英尺的属性值，并验证其是否等于 5249.344。
*/
let mile = Distance(meters: 1600)
print(mile.feet)

/*:
现在创建另一个 `Distance` 实例，为其指定其他距离。确保两个属性均已正确设置。
*/
let fiveK = Distance(meters: 5000)
print(fiveK.feet)

//: [上一页](@previous)  |  第 4 页，共 10 页  |  [下一页：练习 - 方法](@next)
