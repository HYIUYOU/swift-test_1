/*:
## 练习 - 结构、实例和默认值

试想一下，你正在创建某种 app 来监视位置。创建一个具有两个变量属性（latitude 和 longitude）的 `GPS` 结构，这两个属性的默认值均为 0.0。
*/
struct GPS {
   var latitute = 0.0
   var longitude = 0.0
}

/*:
创建一个名为 `somePlace` 的 `GPS` 变量实例。应该在不提供任何自变量的情况下对其进行初始化。输出 `somePlace` 的纬度和经度，两者都应为 0.0。
*/
var somePlace = GPS()
print(somePlace.latitute)
print(somePlace.longitude)

/*:
将 `somePlace` 的纬度更改为 51.514004，将经度更改为 0.125226，然后输出更新的值。
*/
somePlace.latitute = 51.514004
somePlace.longitude = 0.125226
print(somePlace.latitute)
print(somePlace.longitude)

/*:
现在试想一下，你正在制作一个社交 app 来分享你喜欢的书籍。创建一个具有以下四个变量属性的 `Book` 结构：`title`、`author`、`pages` 和 `price`。`title` 和 `author` 的默认值都应该为空字符串。`pages` 的默认值应该为 0，而 `price` 的默认值应该为 0.0。
*/
struct Book {
   var title = ""
   var author = ""
   var pages = 0
   var price = 0.0
}

/*:
创建一个名为 `favoriteBook` 的 `Book` 变量实例，无需提供任何自变量。输出 `favoriteBook` 的标题。它目前是否反映出了你所喜欢的书籍的标题？可能还没有。更改 `favoriteBook` 的所有四个属性以反映出你所喜欢的书籍。然后使用 `favoriteBook` 的属性，输出有关该书籍的一些信息。
*/
var favoriteBook = Book()
print(favoriteBook.title)
favoriteBook.title = "xiyouji"
favoriteBook.author = "wuchengen"
favoriteBook.pages = 1000
favoriteBook.price = 24.99

//: 第 1 页，共 10 页  |  [下一页：App 练习 - 锻炼跟踪](@next)
