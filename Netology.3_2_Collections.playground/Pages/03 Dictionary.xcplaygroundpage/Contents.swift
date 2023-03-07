/*:
 
 [← Вспоминаем предыдущий урок](@previous)

 # Словарь
 
 Это хранилище объектов, обращение к которым построено по уникальному ключу. Доступ к объекту происходит по ключу словаря.
 
 Словарь упрощает поиск элемента и делает обращение к элементу более быстрым, так как у словаря имеется универсальный ключ.

 ## Объявление словаря
 
 Объявление словаря происходит в формате `[тип данных ключа: тип данных объекта]`. Например:
 */
var phones = [
    "Apple": "iPhone X",
    "Android": "Galaxy 12"
]


/*:
 Типы данных значения и ключа могут быть различными, главное условие, чтобы ключ должен быть всегда уникальным.
 
 При инициализации мы можем явно указывать какие типы данных будут в словаре:
 */
var phones22: [String: String] = [
    "Apple": "sadasd",
    "Android": "Galaxy 12"
]
/*:
 ## Создание пустого словаря
 
 Как и с массивами мы можем создать пустой словарь:
 */
var phones2: Dictionary<String, String> = [:]
var phones3: [String: String] = [:]
var phones4 = [String: String]()
/*:
 ## Вспомогательные команды
 
 Как и в массивах мы можем использовать `isEmpty` и `count`
 */
phones.isEmpty
phones.count
//: Значением в словаре может быть массив
/** Type code there */
var phones5: [String: [String]] = [
    "Apple": ["iPhone X", "iPhone 12"]
]
/*:
 ## Обновление словаря
 
 Также для изменения элемента в словаре есть методы `updateValue`, `removeValue`:
 */
var phonesPP = ["iPhone X", "iPhone X"]

var phones6: [String: String?] = [
    "Apple": "iPhone X",
    "Microsoft": "Lumia 1050",
    "Google": "XXXX"
]
//phones6["eyeyey"]


phones6["Google"] = nil
phones6.updateValue(nil, forKey: "Google")
//phones6.removeValue(forKey: "Google")

//phones6["Apple"] = "iPhone 12"
phones6.updateValue("iPhone 12", forKey: "XXX")



var phones9: [String: String] = [
    "Apple": "iPhone X",
    "Microsoft": "Lumia 1050",
    "Google": "XXXX"
]

let phone = phones9["Microsoft"]
print(phone)
//: [→ Перебор словаря](@next)
