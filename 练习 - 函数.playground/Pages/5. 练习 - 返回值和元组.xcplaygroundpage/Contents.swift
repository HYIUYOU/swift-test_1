/*:
## 练习 - 返回值和元组

编写一个名为 `greeting` 的函数来接受一个名为 name 的 `String` 自变量，并返回一个 `String` 来表示对传入该函数的 name 的问候。例如，如果传入“Dan”，返回值可能是“Hi, Dan! How are you?”。使用该函数，并输出结果。
*/
func greeting(name: String) -> String {
   return "Hi \(name)! How are you?"
}

print(greeting(name: "zhaowenshan"))

/*:
编写一个函数来接受两个 `Int` 自变量并返回一个 `Int`。该函数应将这两个自变量相乘，再加上 2，然后返回结果。使用该函数，并输出结果。
*/
func almostMultiplication(firstNumber: Int, secondNumber: Int) -> Int {
   return firstNumber * secondNumber + 2
}

let almostMultiplied = almostMultiplication(firstNumber: 8, secondNumber: 2)
print(almostMultiplied)

//: [上一页](@previous)  |  第 5 页，共 6 页  |  [下一页：App 练习 - 分离函数](@next)
