/*:
 [← Цикл `for-in`](@previous)
 
 # Цикл `while`

 Оператор проверяет некоторое условие, и если оно возвращает true, то будет выполнен блок кода. Этот цикл имеет следующую форму:
 
 ```
 while условие {
    // действия
 }
 ```
*/

var i = 0
while i > 0 {
    print(i)
    i -= 1
}

/*:
 👉 При этом надо внимательно подходить к условию. Если оно всегда будет возвращать `true`, то мы получим бесконечный цикл, и приложение может зависнуть.
 
 ### Дополнительный пример
 
 Написать функцию, которая определяет является ли число палиндромом. Палиндром — число, которое читается наоборот точно также.
 Пример палиндрома: *1221*.
 
 */

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    var inputNumber = x
    var outputNumber = 0
    
    while inputNumber != 0 {
        let digit = inputNumber % 10
        outputNumber = outputNumber * 10 + digit
        inputNumber /= 10
    }
    
    return outputNumber == x
    
}

isPalindrome(10)
isPalindrome(1221)
isPalindrome(1001)
isPalindrome(12312)
//: [→ Цикл `repeat-while`](@next)
