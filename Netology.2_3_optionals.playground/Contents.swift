import UIKit

/*:
 # Опциональные типы данных
 
 Опциональный тип данных, опционал (optional) — это тип, который представляет собой обернутое значение или `nil`. По умолчанию опционал равен `nil`.
 Опционал обозначается добавлением знака `?` к типу данных.
 Пример:
 */
let someString: String = "123"
let myNumber: Int? = Int(someString)
/*:
 В данном примере мы преобразуем строку `someString` в число. Строка имеет числовое значение, поэтому ошибки не произойдет.
 
 ## Принудительное зануление опционала:
 */
var number: Int? = 12
number = nil
print(number)


/*:
 Только опционалы могут иметь значение `nil`.
 
 `Int?` — сокращенная запись от `Optional<Int>`.
 
 Примеры объявления опционалов:
 */
var optionalNumber1: Int? = 12
var optionalNumber2: Optional<Int> = 12
var optionalString2: Optional<Int> = 12
var optionalNumber3: Optional<Int> = Optional(12)
var optionalNumber4 = Optional(false)


/*:
 В примере мы присвоили опциональной переменной значение 12, но на самом деле переменная имеет значение `Optional(12)`
 
 Нельзя забывать, что `Optional<Int>`, `Optional<String>`, `Optional<Double>` это разные типы данных. Поясним:
 */
var optionalNumber = Optional(12) // Optional<Int>
var optionalString = Optional("12") // Optional<String>
type(of: optionalNumber) != type(of: optionalString)
/*:
 ## Как получить значение из опционала?
 
 Работать с двумя разными объектами мы можем только в том случае, если они имеют одинаковые типы. Пример:
 */
var aVar1: Int? = 12
var bVar1: Int = 14
var cVar1Wrong = aVar1! + bVar1
//: Оператор `!` - оператор принудительного извлечения `(unwrap operator)`
var cVar1Good = aVar1! + bVar1
//: Другой пример:
var aVar2: Int = 10
var bVar2: Int? = Int("123") // nil
var cVar2 = aVar2 + bVar2!
/*:
 ## Неявное извлечение опционала
 
 Когда известно, что значение опционала существует сразу после первого объявления, и точно будет существовать после этого, можно использовать неявно извлеченный опционал
*/
var aVar3: Int? = Int("123")
var bVar3: Int = 10

if aVar3 != nil {
    aVar3! += bVar3
    print(aVar3!)
} else {
    print(bVar3)
}
/*:
 Делать так стоит с осторожностью, потому как данные могут отсутствовать, что приведет к ошибке.
 
 ## Привязка опционала
 
 Одна из лучших возможностей получить значение опционала — это привязка опционала (optional binding). Идея в том, что мы присваиваем значение раскрытого опционала новой переменной и проверяем его наличие.

 ```
 if let(или var) константа = опционал {
    действие 1
 } else {
    действие 2
 }
 ```

 Логика работы:
 * в условии `if` мы присваиваем значение переменной / константе;
 * если значение есть, то выполнится блок 1;
 * если значения нет, то выполнится блок 2.
 */
var id: Int? = Int("asdasdasdas") // nil
if var unwrappedId = id {
    unwrappedId += 1
    print(unwrappedId)
} else {
    print("There is no id")
}


var aVar4: Int? = Int("qasdasdasd")
var bVar4: Int = 10

if var aVar4 = aVar4 {
    aVar4 += bVar4
    print(aVar4)
} else {
    print(bVar4)
}
//: Если надо проверить значения нескольких переменных или констант, то все их можно указать в одном выражении `if`:
var aVar5: Int? = Int("11")
var bVar5: Int? = Int("23")

if let aVarUnwrapped5 = aVar5 {
    
}


if let aVarUnwrapped5 = aVar5, let bVar5 = bVar5 {
    print(aVarUnwrapped5)
    print(bVar5)
} else {
    print("error")
}
//: Начиная со Swift 5.6 можно опустить `=`
if let aVar5, let bVar5 {
    print(aVar5)
    print(bVar5)
}
/*:
 В этом примере блок `if` выполнится только при условии, что обе опциональные переменные не равны `nil`. В любом другом случае будет выполнен блок `else`.
 
 ## Опционалы в switch..case
 
 В конструкции `switch` можно использовать объект `Optional`,
 в таком случае в блоках `case` нужно использовать `?` для проверки значения, либо `nil` для проверки его отсутствия:
 */
let myAwesomeNumber: Int? = Int("23")
switch myAwesomeNumber {
case 55:
    print("myAwesomeNumber is equal to 55")
case let aVarUnwrapped5?:
    print("myAwesomeNumber is equal to \(aVarUnwrapped5)")
case 23:
    print("myAwesomeNumber is equal to 23")
case nil:
    break
}

//: Или так:
switch myAwesomeNumber {
case .some(let aVarUnwrapped5):
    print("myAwesomeNumber is equal to \(aVarUnwrapped5)")
case .none:
    print("myAwesomeNumber is NULL")
}
/*:
 ## Оператор nil-объединения
 
 Оператор `??` проверяет первый операнд на наличие значения.
 Если этого значения нет, то выполняется операнд, следующий после знаков `??`.
 */
print("-----")

var aVar6: Int? = Int("asdasdasdasdd")

print(aVar6 ?? -5)


/*:
 В этом примере переменная и будет равна 234, так как переменная a не равна nil.
 
 ## Сравнение объектов `Optional`
 
 Если сравнить Optional с объектом конкретного типа, например с числом, в данном случае объект будет также преобразован к типу Optional:
 */
var aVar7: Int? = Int("234")

if aVar7 != Optional(10) {
    print("aVar7 is equal to 10")
} else {
    print("aVar7 is not equal to 10")
}

/*:
 Также работают операции `==` и `!=`.
 Но с операциями `<`, `>`, `<=`, `>=` все происходит по другому.
 Следующий код выдаст ошибку:
 */
var aVar8: Int? = 10

if let aVar8 = aVar8 {
    if aVar8 > 10 {
        print("aVar8 is greather then 10")
    }
}

//: В таких случаях нужно извлечь значение из опционала:
if let aVar8, aVar8 > 10 {
    print("aVar8 is greather then 10")
}


var firstName: String?
// var result: Int

if let firstName, let result = Int(firstName) {
    print(result)
}

// ==

if let unwrappedString6 = optionalString6 {
    let optionalInt = Int(unwrappedString6)
    if let unwrappedInt = optionalInt {
        print(unwrappedInt)
    }
}

/*:
 ## Итоги
 
 На занятии мы изучили:
 * опциональные типы;
 * раскрытие опционалов с помощью force unwrap;
 * раскрытие с помощью optional binding;
 * раскрытие с помощью switch case;
 * оператор nil-объединения;
 * сравнение опционалов с значениями.
 
 ## Дополнительные материалы
 
 * Основы Swift (включая опционалы) — https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
 * Optional chaining — https://docs.swift.org/swift-book/LanguageGuide/OptionalChaining.html
 * Про опционалы на Хабре — https://habr.com/ru/post/338766/
 
 ## Домашнее задание
 
 https://github.com/netology-code/bios-2-homeworks/tree/bios-20/2.4
 
 */

let vkData = "19067"
let fbData = "13400"
let instData = "_10045"
let youTubeData = "10$0d00"
let webSiteData = "I0I12"

var sumData: Int = 0

// Force unwrap
sumData += Int(vkData)!

// optional binding
if let vkDataInt = Int(vkData) {
    sumData += vkDataInt
}

// Nil-coliasing
sumData += Int(vkData) ?? 0

// MARK: - TASK 2

let isConfirm = true

if let vkDataInt = Int(vkData) {
    if isConfirm {
        print("Ты подтвердил оплату на сумму \(vkDataInt)")
    }
}
