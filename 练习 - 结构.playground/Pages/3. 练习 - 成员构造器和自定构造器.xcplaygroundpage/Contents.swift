/*:
## 练习 - 成员构造器和自定构造器

在完成“结构、实例和默认值”练习后，你创建了一个具有 `latitude` 和 `longitude` 属性的 `GPS` 结构，并且使用了默认值。再次创建 `GPS` 结构，但这一次不提供默认值。这两个属性的类型都应该为 `Double`。
*/
struct GPS {
   var latitute: Double
   var longitude: Double
}

/*:
现在创建一个名为 `somePlace` 的 `GPS` 常量实例，然后使用成员构造器将 `latitude` 设置为 51.514004，将 `longitude` 设置为 0.125226。输出 `somePlace` 的属性的值。
*/

let somePlace = GPS(latitute: 51.514004, longitude: 0.125226)
print(somePlace.latitute)
print(somePlace.longitude)

/*:
在“结构、实例和默认值”练习中，你还创建了一个 `Book` 结构。再次创建此结构，无需默认值。为每个属性指定适当的类型。声明 `favoriteBook` 实例，然后使用成员构造器传入你所喜欢的书籍的值。使用 `favoriteBook` 的属性，输出有关你所喜欢的书籍的一些信息。
*/
struct Book {
   var title: String
   var author: String
   var pages: Int
   var price: Double
}
var favoriteBook = Book(title: "xiyouji", author: "wuchengen", pages: 1000, price: 24.99)

print("My favorite book is \(favoriteBook.title) by \(favoriteBook.author). It is \(favoriteBook.pages) long and costs \(favoriteBook.price) dollars to get the paperback copy.")

/*:
创建一个具有以下两个变量属性的 `Height` 结构：`heightInInches` 和 `heightInCentimeters`。这两个属性的类型都应该为 `Double`。

创建两个自定构造器。一个构造器用来接受一个表示高度的 `Double` 自变量，以英寸为单位。另一个构造器用来接受一个表示高度的 `Double` 自变量，以厘米为单位。每个构造器都应该接受传入的值，并使用该值来设置与传入的测量单位对应的属性。然后，应该通过基于传入的值计算正确的值来设置另一个属性。提示：*1 英寸 = 2.54 厘米*。

- Example: （示例）：\
如果使用表示英寸的构造器传入高度 65，那么该构造器应该会将 `heightInInches` 设置为 65，将 `heightInCentimeters` 设置为 165.1。
*/
struct Height {
   var heightInInches: Double
   var heightInCentimeters: Double
   
   init(heightInInches: Double) {
       self.heightInInches = heightInInches
       self.heightInCentimeters = heightInInches*2.54
}
   
   init(heightInCentimeters: Double) {
       self.heightInCentimeters = heightInCentimeters
       self.heightInInches = heightInCentimeters/2.54
}
}

/*:
现在创建一个名为 `someonesHeight` 的 `Height` 变量实例。使用表示英寸的构造器将高度设置为 65。输出以厘米为单位的高度属性值，并验证其是否等于 165.1。
*/
var someonesHeight = Height(heightInInches: 65)
print(someonesHeight.heightInCentimeters)

/*:
现在创建一个名为 `myHeight` 的 `Height` 变量实例，将其初始化为你自己的身高。验证 `heightInInches` 和 `heightInCentimeters` 是否正确。
*/
var myHeight = Height(heightInCentimeters: 165.1)
print(myHeight.heightInInches)

//: [上一页](@previous)  |  第 3 页，共 10 页  |  [下一页：App 练习 - 用户和距离](@next)
