/*:
## App 练习 - 锻炼函数

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

下面是为你创建的 `RunningWorkout` 结构。在 `RunningWorkout` 中添加一个名为 `postWorkoutStats` 的方法来输出跑步的详细信息。然后创建一个 `RunningWorkout` 实例，并调用 `postWorkoutStats()`。
*/
struct RunningWorkout {
   var distance: Double
   var time: Double
   var elevation: Double
    func postWorkoutStats() {
    print("Distance: \(distance)m\rTime: \(time)s\rElevation: \(elevation)m")
    }
}
let a = RunningWorkout(distance: 20, time: 30, elevation: 40)
a.postWorkoutStats()
/*:
下面是为你创建的 `Steps` 结构，代表当天的步数跟踪数据。该数据包含当天的目标步数以及到目前为止的已完成步数。在 `Steps` 中创建一个名为 `takeStep` 的方法来以 1 递增 `steps` 的值。然后创建一个 `Steps` 实例，并调用 `takeStep()`。在调用该方法之前和之后输出该实例的 `steps` 属性的值。
*/
struct Steps { 
   var steps: Int
   var goal: Int
   mutating func takeStep() {
        steps += 1
    }
}
var b = Steps(steps: 2, goal: 100)
print(b.steps)
b.takeStep()
print(b.steps)
//: [上一页](@previous)  |  第 6 页，共 10 页  |  [下一页：练习 - 计算型属性和属性观察器](@next)
