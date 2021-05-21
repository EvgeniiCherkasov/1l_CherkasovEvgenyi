import UIKit

//MARK: Задание 1
//Решить квадратное уравнение

func solver(a: Double, b: Double, c: Double = 0){
    let discr = 2 * pow(b, 2) - 4 * a * c
    
    if discr > 0 {
        print("x1 =\((-b + sqrt(b))/(2 * a))")
        print("x2 =\((-b - sqrt(b))/(2 * a))")
    } else if discr == 0 {
        print("x =\(-b / (2 * a))")
    } else {
        print("Корней нет")
    }
}

// Проверка: a = 1 b = 1 с = 0 Ответ: (x1 = 0, x2 = 1)

solver(a: 1, b: 1, c: 0)

//MARK: Задание 2
//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

func triangle(firstLeg: Double, secondLeg: Double){
    print("S = \((firstLeg * secondLeg)/2)")
    print("P = \((firstLeg + secondLeg)/2)")
    print("Hypotenuse = \(sqrt(pow(firstLeg,2) + pow(secondLeg,2)))")
}

//Проверка: firstLeg = 4, secondLeg = 3 Ответ: S = 6, P = 3.5, Hypotenuse = 5

triangle(firstLeg: 4, secondLeg: 3)

//Mark: Задание 3
//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через                             5 лет.

//tip: Проценты вводить в формате: 10% = 0.1

func amount(vklad: Double, percent: Double, years: Double){
    print("Сумма вклада через \(years) равна \(vklad * pow((1 + percent), years))")
}

//Проверка: Вклад = 100 000, процент = 10%, на 5 лет Ответ: 161 051
amount(vklad: 100000, percent: 0.1, years: 5)
