/*:
## 练习 - 方法

下面是为你创建的 `Book` 结构。在 `Book` 中添加一个名为 `description` 的实例方法来输出有关书籍的一些信息。然后创建一个 `Book` 实例，并针对该实例调用此方法。
*/
struct Book {
   var title: String
   var author: String
   var pages: Int
   var price: Double

func description() {
       print("\(title), written by \(author), is \(pages) pages long and costs \(price) dollars.")
}
}
let favoriteBook = Book(title: "Hamlet", author: "Shakespeare", pages: 80, price: 9.99) // REMOVE
favoriteBook.description()

/*:
下面是为你创建的 `Post` 结构，代表一般社交媒体帖子。在 `Post` 中添加一个名为 `like` 的突变方法来以 1 递增 `likes`。然后创建一个 `Post` 实例，并针对该实例调用 `like()`。在调用该方法之前和之后输出 `likes` 属性，以查看值是否递增。
*/
struct Post {
   var message: String
   var likes: Int
   var numberOfComments: Int
    mutating func like() {
    likes += 1
        
    }
}
var somePost = Post(message: "Did anyone else notice what happened during that game!?", likes: 18, numberOfComments: 9)
print(somePost.likes)
somePost.like()
print(somePost.likes)
//: [上一页](@previous)  |  第 5 页，共 10 页  |  [下一页：App 练习 - 锻炼函数](@next)
