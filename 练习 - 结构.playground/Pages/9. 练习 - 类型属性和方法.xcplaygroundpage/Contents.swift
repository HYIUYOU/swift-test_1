/*:
## 练习 - 类型属性和方法

试想一下，你有一个需要用户登录的 app。你可能有一个类似于下面的 `User` 结构。但是，除了跟踪特定用户信息之外，你可能还想知道当前登录用户的身份。在下面的 `User` 结构中创建一个 `currentUser` 类型属性，将其分配给代表你自己的 `user` 对象。现在，你可以通过 `User` 结构来访问当前用户。输出 `currentUser` 的属性。
*/
struct User {
   var userName: String
   var email: String
   var age: Int
    static var currentUser: User = User(userName: "zhaowenshan", email: "2021417370@qq.com", age: 20)
       
       static func logIn(user: User) {
           currentUser = user
           print("\(currentUser.userName) is now logged in.")
    }
}
/*:
与 `User` 结构相关联的其他属性和操作也可以用作类型属性或方法。例如，用于登录的方法。创建一个名为 `logIn(user:)` 的类型方法，其中 `user` 的类型为 `User`。在该方法的主体中，将传入的用户分配给 `currentUser` 属性，然后使用用户的 userName 输出一条信息来指示该用户已登录。

如下所示，调用 `logIn(user:)` 方法，然后传入与你分配给上面 currentUser 不同的 `User` 实例。观察控制台中的输出结果。
*/
var user = User(userName: "zhaowneshan", email: "1111", age: 2)
User.logIn(user:user)

//: [上一页](@previous)  |  第 9 页，共 10 页  |  [下一页：App 练习 - 类型属性和方法](@next)
