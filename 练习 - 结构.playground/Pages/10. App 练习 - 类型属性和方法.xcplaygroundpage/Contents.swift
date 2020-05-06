/*:
## App 练习 - 类型属性和方法

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

在另一个练习中，你添加了一个计算型属性来表示跑步的平均英里时间。但是，你可能想要为用户提供一种计算器，让他们可以在跑步之前先计算出所需的平均里程时间，以便在给定时间内完成给定的距离。在这种情况下，可以在 `RunningWorkout` 中使用一个无需 `RunningWorkout` 实例即可访问的类型方法。

向 `RunningWorkout` 中添加一个类型方法 `mileTimeFor(distance:time:)`，其中 `distance` 和 `time` 均为 `Double` 类型。此方法应具有 `Double` 类型的返回值。该方法的主体应计算出在传入的时间内完成传入的距离所需的平均英里时间。假设距离以米为单位，一英里等于 1600 米。

从结构外部调用该方法，然后输出结果以确保一切正常。
*/
struct RunningWorkout {
   var distance: Double
   var time: Double
   var elevation: Double
    static var meterInFeet = 3.28084
    static var mileInMeters = 1600.0
    static func mileTimeFor(distance: Double, time: Double) -> Double {
           return time/distance * 1600
    }
}

print(RunningWorkout.mileTimeFor(distance: 2, time: 1))
/*:
在 `RunningWorkout` 中可以使用一些类型属性来表示单位换算，例如米到英里，英尺到米的换算等。为前面的 `meterInFeet` 添加一个类型属性，为其赋值 3.28084。然后，为 `mileInMeters` 添加一个类型属性，为其赋值 1600.0。输出这两个值，如下所示。
*/
print(RunningWorkout.meterInFeet)
print(RunningWorkout.mileInMeters)

/*:

_Copyright © 2017 Apple Inc._

_特此授予任何人免费获取本软件及相关文档文件（下文简称“本软件”）副本的权利，允许其无限制地处理本软件，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或出售本软件副本的权利，并允许本软件的合法用户这样做，但须符合以下条件：_

_上述版权声明和本许可声明应包含在本软件的所有副本或主要部分中。_

_本软件按其现状提供，不作任何明示或默示担保，包括但不限于对适销性、特定用途的适用性和不侵权的保证。在任何情况下，作者或版权所有者均不对因合同、侵权或其他由于使用或处理本软件而引起或与其相关的任何索赔、损害或其他责任负责。_
*/
//: [上一页](@previous)  |  第 10 页，共 10 页
