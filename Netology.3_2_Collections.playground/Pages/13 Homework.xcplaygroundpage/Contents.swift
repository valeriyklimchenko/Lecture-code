/*:
 [← Итоги](@previous)
 
 # Домашка 😜
 
 ## Задача 1
 **Работа с кортежами**

 Вы работаете над приложением "Информация о вас и ваших друзьях". Ваша задача создать список людей с минимальной информацией о них и объединить одно из полей для создания общего значения.

 **Алгоритм выполнения**
 1. Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо. **Все элементы кортежа должны быть именованы**.
 2. Одним выражением запишите каждый элемент кортежа в три константы.
 3. Создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека (с другими значениями).
 4. Обменяйте значения в кортежах между собой (с использованием дополнительного промежуточного кортежа).
 5. Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 
 */
var somsse1 = (film: "asdasd", number: 4, ...)
let (film, number, ...) = somsse

var somsse2 = (film: "asdasd", number: 4, ...)
let somsse3 = somsse1
somsse1 = somsse2
somsse2 = somsse3


/*:

 ## Задача 2
 Представьте, что вы работаете над приложением электронный дневник. Создайте словарь, где ключом будет имя студента, а значением будет другой словарь из 3 элементов, содержащий название предмета и оценку.

 */
let asdasd = [
    "mark": [
        "algebr": 4
    ]
]
/*:

 ## Задача 3
 Вы разрабатываете приложение "Шахматы". Вашей задачей будет создать фигуру на игровом поле.

 **Алгоритм выполнения**

 1. Создайте псевдоним типа (typealias) Chessman для типа словаря `[String: (alpha:Character, num: Int)?]`. Данный тип описывает шахматную фигуру на игровом поле.

 В ключе словаря должно храниться имя фигуры, например «Белый король», а в значении — кортеж, указывающий на координаты фигуры на игровом поле. Если вместо кортежа находится nil, это означает, что фигура убита (не имеет координат на игровом поле).

 2. Создайте переменный словарь Chessmans типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.

 3. Создайте конструкцию `if-else`, которая проверяет, убита ли переданная ей фигура (элемент словаря Chessmans), и выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.

 **Подсказка**
 Для получения координат переданной фигуры используйте опциональное связывание.

 ```
     // chessmans[key] - опциональное значение
     if let info = chessmans[key] {
         // Действие
     }
 ```

 */

typealias Chessman = [String: (alpha:Character, num: Int)?]

let chessmans: Chessman = [
    "Белый король": (alpha: "A", num: 3)
]

if let chessmans = dict["Белый король"] {
        // Действие
} else {
    
}


/*:
 
 ## Задача 4 * (задача со звездочкой)

 Вам необходимо доработать программу из Задачи 3 таким образом, чтобы она автоматически анализировала не одну переданную ей фигуру, а все фигуры, хранящиеся в переменной Chessmans.
 
 */
for key in chessmans.keys {
    
}

