import UIKit

/*:
 ## Логические значения (Bool)
 
 Тип `Bool` представляет логическое значение `true` (истина) или `false` (ложь).
 Объект Bool может находиться в двух состояниях:
 */
var isEnabled: Bool = true
isEnabled = false
/*:
 Объекты типа `Bool` нередко являются результатом условных выражений, т. е. таких выражений, которые представляют некоторое условие, и в зависимости от истинности условия возвращают true или false:
  - `true` — если условие истинно
  - `false` — если условие ложно.
 
 ### Пример:
 */
var firstNumber = 2
var secondNumber = 3
var shouldCompare: Bool = true

if shouldCompare {
    print("Should compare: \(shouldCompare)")
    print("First number is less then second number: \(firstNumber < secondNumber)")
}

/*:
 ## Функции `toggle()` и `random()`
 
 Функция `toggle()` позволяет получить противоположное значение:
 */
var boolVariable: Bool = true
boolVariable = !boolVariable
//boolVariable.toggle()
boolVariable
/*:
 Функция `random()` позволяет получить случайное значение типа `Bool`:
 */
var random: Bool = Bool.random()
/*:
 ## Операции сравнения
 
 Cравнивая значения, мы получим истину или ложь.
 Результат сравнения – это переменная типа `Bool`.
 
 `==` — Операция равенства.
 
 Если левое и правое значение равны, вернет `true`, иначе `false`:
 */
print(20 == 20) // true
print(20 == 8) // false
let gggg: Bool = (20 == 20)

/*:
 `!=` - Операция неравенства.
 
 Если левое и правое значение не равны, вернет `true`, иначе `false`:
 */
print(20 != 20) // false
print(20 != 8) // true
/*:
 `>` — Если левое значение больше правого, вернет `true`, иначе `false`:
 */
print(20 > 20) // true
print(20 > 25) // false
//: `<` — Если правое значение больше левого, вернет `true`, иначе `false`:
print(25 < 20) // false
print(20 < 25) // true
//: `>=` — Если левое значение больше либо равно правому, вернет true, иначе false:
print(25 >= 25) // true
print(8 >= 25) // false
//: `<=` — Если правое значение больше либо равно левому, вернет true, иначе false:
print(25 <= 25) // true
print(25 <= 8) // false
/*:
 ## Логические операции
 
 Логические операции позволяют преобразовывать логические значения. Они работают с переменными типа `Bool` и возвращают тот же тип.
 
 `!` Отрицание (НЕ). Меняет значение Bool переменной на обратное:
 */
let boolVar: Bool = true
let anotherVar = !boolVar
//: `&&` Логическое умножение (И). Если оба значения будут равны true, тогда вернет true, иначе false:
let vasyaHasMoney: Bool = false
let lenaHasMoney: Bool = false

print(vasyaHasMoney && lenaHasMoney)
//: `|` Логическое сложение (ИЛИ). Если хотя бы одно значение равно true, вернет, иначе false:

print(vasyaHasMoney || lenaHasMoney)
//: `|` Логическое сложение (ИЛИ). Если хотя бы одно значение равно true, вернет, иначе false:

/*:
 При каких значениях A, B можно получить false в операции - Логическое сложение (ИЛИ)?
 
 A. A=false, B=false
 B. A=false, B=true
 C. A=true, B=false
 D. A=true, B=true
 
 A || B = true
 
 При каких значениях A, B можно получить true в операции - Логическое умножение (И)?
 
 A. A=0, B=0
 B. A=0, B=1
 C. A=1, B=1
 D. A=1, B=0
 
 Таблица истинности ->
 
 Также логические операции можно объединить с операциями сравнения:
 */
let varA = 10
let varB = 12
print(varA > varB)// false
print(varA > 8 && varB < 10)// false
print(varA > 8 || varB < 10 || 10 < 12)// true

let vasyaMoney: Double = 100
print(vasyaMoney > 50 && vasyaMoney < 200)// true
/*:
 ## Преобразование типов. Условные конструкции.
 
 Swift - строго типизированный язык. В связи с этим, возникают ситуации, когда необходимо преобразовать данные из одного типа в другой.
 Например, сервер передает вам данные в строковом формате, а в нем хранится `id` объекта и вам удобнее работать с ним в формате `Int`.
 Тогда на помощь приходит приведение типов:
 */
let idObjectServer: String = "12537" // Данные от сервера
let idApp = Int(idObjectServer) // Преобразование для приложения
/*:
 ## Преобразования числовых типов
 
 Для работы с целыми числами (даже с отрицательными) используйте тип данных `Int`.
 
 Если вы будете использовать стандартные типы данных в своем коде, то у вас не будет возникать ошибок с несоответствием типов, так как переменные будут соответствовать одному типу данных.
 
 Использование других типов данных для хранения целых чисел целесообразно только, когда где-то в программе уже использованы данные типы (например, для стандартизации работы программы, для улучшения производительности и работы с памятью).
 
 ## Преобразования целых чисел и чисел с плавающей точкой
 
 При преобразовании целого числа в число с плавающей точкой нужно указывать явно тип данных, в который мы будем преобразовывать.
 
 Например:
 */
let threeInt: Int = 3
let threeDouble = Double(threeInt)
let pointOneFourOneFiveNine: Double = 0.14159
let pi = threeDouble + pointOneFourOneFiveNine // pi равно 3.14159, и для него выведен тип Double
print(type(of: pi))
/*:
 Здесь, для соответствия типам данных константу `three` преобразовали из типа `Int` в `Double`, чтобы обе переменные имели одинаковый тип.
 Если не произвести преобразование, будет выведена ошибка о несоответствии типов данных.
 
 Преобразование из `Double` в `Int` происходит так же:
 */
let anotherDouble: Double = 5.87
let integerPi = Int(anotherDouble) // integerPi равен 3, и для него выведен тип Int

let charVar: Character = "4"

print(type(of: integerPi))
/*:
 Если вы преобразуете числа с плавающей точкой в целые числа, дробная часть будет просто убираться. Например, число 5.99 будет равно 5.
 
 ## Преобразование Строк в число и наоборот
 */
var strNum = "123"
let aInt = Int(strNum)

let xInt: Int = 42
var myString = String(xInt)

let xxx: Double = 5.2

/*:
 ## Условные конструкции
 
 Допустим, нам нужно в банкомате выдать некоторую сумму денег, которая может быть выдана, если не превышает доступный баланс.
 Какие для этого есть конструкции?
 
 ![Image](Screen1.png)
 
 ## Конструкция `if/else`
 
 Эту конструкцию мы частично затронули в прошлом занятии, давайте рассмотрим ее подробнее. Данная конструкция проверяется условие в блоке `if`, если он истинно, выполняется блок `if`:
 
 ```
 if условие {
     // Набор действий
 }
 ```
 
 Например:
 */

let number1 = 22
let number2 = 23
if number1 > number2 {
    print("number1 больше чем number2")
}
print("my code")
/*:
 В примере проверяется условие, что первое число больше второго.
 Если данное условие истинно, то выполняется блок `if`, иначе блок просто пропустит компилятор.
 
 Условия должны быть логическими операциями. Если в условии не будет возвращаться логическое значение, то блок завершится ошибкой.
 */
if number1 != 0 {
    print("number1 больше чем number2")
}
//: Блок `else` в случае невыполнения условия в `if`:
print("------")
if number1 > number2 {
    print("number1 больше чем number2")
} else {
    print("number1 меньше чем number2")
}
/*:
 ## Что делать, если условий больше, чем 2?
 
 В данном случае можете указывать дополнительные условия в блоке `else if`.
 Пример:
 */
if number1 > 10 {
    print("number1 больше чем number2")
} else if number1 < 5 {
    print("number1 меньше чем number2")
} else {
    print("number1 и number2 равны")
}

if number1 > 10 {
    print("number1 больше чем number2")
}

if number1 < 5 {
    print("number1 меньше чем number2")
}

/*:
 ## Тернарный оператор
 
 Тернарный оператор используется в случаях обычного сравнения для краткости кода. Явных преимуществ тернарного оператора над конструкцией `if` нет.
 
 Синтаксис:
 ```
 [первый операнд - условие] ? [второй операнд] : [третий операнд]
 ```
 
 При выполнении условия выполняется второй операнд, иначе третий. Например:
 */
var num1 = 10
var num2 = 6
var num3 = (num1 > num2) ? num1 : num2

let isMale = true
print(isMale ? "He is male" : "He is female")
/*:
 ## Конструкция `switch`
 
 Данная конструкция напоминает конструкцию `if else`. Она так же может обработать несколько условий:
 */
var num: Int = 27
switch num {
case 0:
    print("Переменная равна 0")
case 18:
    break
case 27:
    print("Переменная равна 27")
default:
    break
    print("Переменная равна 27")
}
print("ASDASD")

if num == 0 {
    print("Переменная равна 0")
} else if num == 18 {
    print("Переменная равна 18")
} else if num == 27 {
    print("Переменная равна 27")
} else {
    print("Не удалось распознать число")
}

var myBool: Bool = false
switch myBool {
case true:
    print("   ")
case false:
    print("   ")
}


/*:
 Алгоритм работы конструкции `switch`
 
 1. После слова `switch` указываем сравниваемое значение.
 2. Далее это значение поочередно сравнивается со значениями, указанными после операторов `case`.
 3. При совпадении будет выполнен определенный блок `case`. Блок `default` выполнится, если сравнения не найдутся в блоках case.
 4. При выполнении любого кейса выполнение `switch` конструкции прекратится:
 */
var myVar = "test"
switch myVar {
case "test":
    print("ok")
case "asfagdasdgfads":
    print("no ok")
default:
    print("no ok")
}

var anotherNum: Int = 27
switch anotherNum {
case 18:
    print("Переменная равна 18")
case 18:
    print("Переменная равна 18")
default:
    print("Не удалось распознать число")
}
/*:
 Также в любом блоке можно указывать ключевое слово `break` для выхода из конструкции `switch`.
 
 Например:
 */
var numberX: Int = 0
switch numberX {
case 0:
    print("Переменная равна 0")
case 22:
    print("Переменная равна 22")
    break
    print("Переменная равна 22")
case 44:
    break
default:
    break
}

/*:
 В данном примере, если число не равно 0 или 44, выполнится блок, в котором есть оператор `break` и произойдет выход из конструкции `switch`.
 
 Можно сравнить не только с конкретным значением, но и с группой.
  */
var numberY: Int = 17
switch numberY {
case 0, 10:
    print("Переменная равна 0 или 10")
case 11 ..< 20:
    print("Переменная находится в диапазоне от 11 до 19 включ")
case 15 ... 30:
    print("Переменная находится в диапазоне от 20 до 30 включ")
default:
    print("не удалось распознать число")
}
/*:
 Оператор `case 0, 10` сработает, только когда значение равно 0 или 10.
 Оператор `case 11...<20` сработает, если значение будет в диапазоне от 11 до 20 не включая 20.
 Оператор `case 20...30` сработает, если значение находится в диапазоне от 20 до 30 включая обе границы.
 
 В версии Swift 4 можно не указывать одну из границ.
 */
let numberP = 8
switch numberP {
case ..<0:
    print("num - отрицательное число")
case 1...:
    print("num - положительное число")
case 0:
    print("num равно 0")
default:
    break
}
/*:
 ## Связывание значений
 
 Механизм связывания значений позволяет определить в блоках case переменные и константы, значения которых будут определены с помощью значения условия:
 */
let numberO = 5
switch numberO {
case 1:
    print("Number = 1")
case 2:
    print("Number = 2")
case let n:
    print("Number = \(n)")
}
/*:
 В данном случае, если значение number не равно 1 и 2, то оно передается константе `n`, которая используется в рамках своего блока case.
 
 ## Оператор `where`
 
 В блоке `case` можно задавать дополнительные условия с помощью
 оператора `where`.
 */
let i = 8
switch i {
case let f where f < 0:
    print("i - отрицательное число")
case let k where k > 0:
    print("i - положительное число")
case 0:
    print("i is 0")
default:
    break
}

if i < 0 {
    print("i - отрицательное число")
} else if i > 0 {
    print("i - положительное число")
} else if i == 0 {
    print("i is 0")
}

/*:
 На занятии мы:
 - Узнали о логических типах и их использовании;
 - Посмотрели операции сравнения (равно-не равно, больше-меньше и другие);
 - Попробовали логические операции из булевой алгебры;
 - Преобразование числовых типов;
 - Преобразование строк в число и обратно;
 - Условную конструкцию if / else;
 - Тернарный оператор;
 - Условную конструкцию switch.
 */

// ДЗ

let january = "Январь"
let febr = "Фервраль"
// ...

var selectedMonth = febr
var days: Int = 0

if selectedMonth == january {
    print("В январе 16 рабочих дней")
} else if selectedMonth == febr {
    days = 31
}

switch selectedMonth {
case january:
    print("В январе 16 рабочих дней")
case febr:
    print("...")
}


var isHoliday: Bool = true
print(isHoliday ? "asdasds" : "asdasfasfas")