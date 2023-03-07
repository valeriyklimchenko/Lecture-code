/*:
 [← Словарь](@previous)
 
 # Перебор словаря
 
 Чтобы перебрать все ключи и значения словаря используется цикл `for-in`
 */

let phones = [
    "Apple": "iPhone X",
    "Microsoft": "Lumia 1050",
    "Google": "Nexus X5"
]

for (key, value) in phones {
    print(key, value)
}

phones.forEach({ (key, value) in
    
})

let array = phones.map({ (key, value) in
    return "\(key) \(value)"
})

//: Перебор ключей и значений отдельно:
for key in phones.keys {
    print(key)
}

for value in phones.values {
    print(value)
}

/*:
 [→ Создание словаря из массивов](@next)
 */
