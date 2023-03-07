/*:
 [← Перебор словаря](@previous)
 
 # Создание словаря из массивов
 
 В Swift есть возможность создать словарь из двух массивов с помощью функции `zip()`, которая создает объект `Zip2Sequence`, а после этого передает этот объект в инициализатор словаря.
 Например:
 
 */

let countries = ["Russia", "USA", "China", "Thailand"]
let capitals = ["Moscow", "Washington", "Pekin", "Bangkok"]


let zipq = zip(countries, capitals)
let dict = Dictionary(uniqueKeysWithValues: zipq)
dict

/*:
 В примере ниже мы объединяем два массива и передаем данную последовательность в инициализатор словаря, а также второй параметр `uniquingKeysWith`, который выступает в роли функции, которая обрабатывает элементы повторяющихся ключей.
 
 В данном примере это два элемента, мы просто возвращаем второй элемент.
 */

let countries1 = ["Russia", "USA", "China", "Thailand", "Russia", "Russia"]
let capitals1 = ["Moscow", "Washington", "Pekin", "Bangkok", "Penza", "azd"]
let zip2 = zip(countries1, capitals1)

/** Type code there */
let dict2 = Dictionary(zip2, uniquingKeysWith: { aValue, bValue in
    return bValue
})
dict2
//: Вот пример того, как из массива пользователей можно создать словарь, где ключом является возраст человека:

struct User {
    let name: String
    let age: Int
}

let users = [
    User(name: "Max", age: 18),
    User(name: "Tom", age: 24),
    User(name: "Luisa", age: 14),
    User(name: "Tom", age: 32),
    User(name: "Tom", age: 18),
]

let dict6 = Dictionary(grouping: users, by: { user in
    return user.age
})
dict6
/*:
 [→ Кортеж](@next)
 */
