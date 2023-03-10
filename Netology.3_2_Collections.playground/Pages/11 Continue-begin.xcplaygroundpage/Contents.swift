/*:
 [← Цикл `repeat-while`](@previous)
 
 # Операторы `continue` / `break`
 
 Иногда возникает ситуация, когда требуется выйти из цикла, не дожидаясь его завершения. В этом случае мы можем воспользоваться оператором `break`.

*/
for i in 0...10 {
    /** Type code there */
    print(i)
    if i == 5 {
        break
    }
}
print("finish")
/*:
 Поскольку в цикле идет проверка, равно ли значение переменной `i` числу 5, то когда перебор дойдет до числа 5, сработает оператор `break`, и цикл завершится.
 
 Теперь поставим себе другую задачу. А что если мы хотим, чтобы
 при проверке цикл не завершался, а просто переходил к следующему
 элементу. Для этого мы можем воспользоваться оператором `continue`:
 */
for i in 0...10 {
    /** Type code there */
    print("Code1", i)
    if i == 5 {
        continue
    }
    print("Code2", i)
    /** Type code there */
}
print("finished")
/*:
 В этом случае цикл, когда дойдет до числа 5, которое не удовлетворяет условию проверки, просто пропустит это число и перейдет к следующему элементу последовательности.
 
 [→ Итоги](@next)
 */
