/*:
## App 练习 - 英里时间和祝贺信息

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

下面的 `RunningWorkout` 结构用于保存有关用户跑步锻炼的信息。但是，你决定添加有关平均英里时间的信息。添加一个名为 `averageMileTime` 的计算型属性来使用 `distance` 和 `time` 计算用户的平均英里时间。假设 `distance` 以米为单位，一英里等于 1600 米。

创建一个 `RunningWorkout` 实例，然后输出 `averageMileTime` 属性。检查一切是否正常。
*/
struct RunningWorkout {
   var distance: Double
   var time: Double
   var elevation: Double
    var averageMileTime: Double {
        return time/distance * 1600
        
    }
}
var a = RunningWorkout(distance: 2, time: 20, elevation: 30)
print(a.averageMileTime)
/*:
在其他 app 练习中，你已根据用户完成的步数向用户提供了鼓励信息。一个用于检查是否应向用户显示所需信息的好工具是属性观察器。

在下面的 `Steps` 结构中，向 `steps` 属性添加 `willSet` 来检查新值是否等于 `goal`。如果相等，则输出祝贺信息。创建一个 `Steps` 实例，其中 `steps` 为 9999，`goal` 为 10000，然后调用 `takeStep()`，看看所需信息是否已输出到控制台。
*/
struct Steps {
    var steps: Int{
        willSet {
                   if newValue == goal {
                       print("Congratulations! You met your goal for the day!")
        }
        }
    }
   var goal: Int
   
   mutating func takeStep() {
       steps += 1
}
}
var b = Steps(steps: 9999, goal: 10000)
b.takeStep()

//: [上一页](@previous)  |  第 8 页，共 10 页  |  [下一页：练习 - 类型属性和方法](@next)
