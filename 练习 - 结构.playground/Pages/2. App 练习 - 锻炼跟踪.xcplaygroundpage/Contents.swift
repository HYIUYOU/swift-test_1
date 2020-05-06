/*:
## App 练习 - 锻炼跟踪

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

如果你的健身跟踪 app 无法帮助用户跟踪他们的锻炼情况，那么就算不上是一个健身跟踪器。要跟踪用户的跑步情况，需要使用某种数据结构来保存锻炼信息。为了简单起见，将只考虑跑步锻炼信息。

创建一个 `RunningWorkout` 结构。该结构应具有 `distance`、`time` 和 `elevation` 变量属性。所有这三个属性的默认值都应为 0.0。
*/
struct RunningWorkout {
   var distance = 0.0
   var time = 0.0
   var elevation = 0.0
}

/*:
创建一个名为 `firstRun` 的 `RunningWorkout` 变量实例，无需提供任何自变量。输出 `firstRun` 的所有三个属性。在跑步锻炼这个例子中，使用默认值即可，因为所有跑步锻炼的距离、时间和海拔都从 0 开始变化。
*/
var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.elevation)

/*:
现在试想一下，在整个跑步过程中，你用了 15.3 分钟跑了 2396 米，海拔高度为 94 米。相应地更新 `firstRun` 的属性的值。使用每个属性的值，输出有关你的跑步情况的信息。
*/
firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94
print("On my first run with my fitness tracking app I ran \(firstRun.distance) meters in \(firstRun.time) minutes with elevation gain of \(firstRun.elevation) meters.")

//: [上一页](@previous)  |  第 2 页，共 10 页  |  [下一页：练习 - 成员构造器和自定构造器](@next)
