//
//  ViewController.swift
//  G56L3
//
//  Created by Alesia Mjau on 25/08/17.
//  Copyright © 2017 Alesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("String. Task 1")
        let myName = "Alesia"
        let totalLettersInName = countLettersInName(name: myName)
        
        print("\(myName)'s name has \(totalLettersInName) letters.")
        
        print("======================================================")
        
        
        print("String. Task 2")
        let userFirstName = "Alesia"
        let userLastName = "Jusfan"
        let myUserName = usernameWithLowercaseAndDash(firstName: userFirstName, lastName: userLastName)
        
        print("User \(userFirstName) \(userLastName) has username \(myUserName)")

        print("======================================================")
        
        
        print("String. Task 3")
        let userNameAndPatronymic = "Алеся Васильевна"
        let resultIfUserManOrWoman = checkIfUserManOrWoman(userPatronymic: userNameAndPatronymic)
        
        print("User \(userNameAndPatronymic) \(resultIfUserManOrWoman)")

        print("======================================================")
    
        
        print("Collection Types. Task 1")
        
        var oddNumbers = [1,3,9,17,5]
        
        print("Initial array's numbers: \(oddNumbers)")
        for _ in 0..<oddNumbers.count {
            oddNumbers.removeLast()
        }
        print("Array's numbers have been removed")

        print("======================================================")
        
        print("Collection Types. Task 2")
        let arrayOne = [1, 2, 5]
        let arrayTwo = [7, 3, 9, 11]
        let combineTwoArraysResult = arrayOne + arrayTwo
        
        print("Combined arrays numbers: \(combineTwoArraysResult)")
        
        print("======================================================")
        
        print("Collection Types. Task 3")
        let allElementsInArray = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
        elementsOfArrayInRow(myNumbersInArray: allElementsInArray)

        print("======================================================")

        print("Collection Types. Task 4")
        let stringArray: [String] = ["Paris", "London", "Tallinn", "Oslo", "Kiev"]
        let finalArrayFromFirstAndLastElements = firstAndLastElementsInArray(stringArray: stringArray)
        print(finalArrayFromFirstAndLastElements)
        let nonOptionalFirstElement: String! = finalArrayFromFirstAndLastElements.first
        let nonOptionalLastElement: String! = finalArrayFromFirstAndLastElements.last
        print(nonOptionalFirstElement)
        print(nonOptionalLastElement)
        
        
        print("======================================================")
        
        print("Collection Types. Task 5")
        var ageDict = [
            "Roman": 15,
            "Anna": 25,
            "Robert": 17
        ]
        
        print(ageDict)
        
        ageDict["Alon"] = 35
        
        ageDict["Dima"] = 20
        
        print(ageDict)
        
        
        print("======================================================")
        
        print("Collection Types. Task 6")
        var ageDictTwo = [
            "Tom": 12,
            "Jessica": 5,
            "Jeremy": 17
        ]
        print(ageDictTwo)
        
// Array(ageDictTwo.keys)[1]
        if let secondKey = ageDictTwo.index(forKey: "Jessica") {
            ageDictTwo.remove(at: secondKey)
            print(ageDictTwo)
        }
        
        
        print("======================================================")
        
        print("Collection Types. Medium. Task 1")
        let srtingArrayMediumValue: [String] = ["One", "Two", "Three"]
        let elementMediumValue: String = "Five"
        let checkIfElementInArrayResult = checkIfElementInArray(srtingArrayMedium: srtingArrayMediumValue, elementMedium: elementMediumValue)
        print(checkIfElementInArrayResult)

        
        
        
        print("======================================================")
        
        print("Collection Types. Medium. Task 2")
        let ageDictThree = [
            "Dima": 16,
            "Alina": 25,
            "Terminator": 36
        ]
        print(ageDictThree)
        
        print("Все значения словаря:")
        allValuesFromDict(myDict: ageDictThree)
        
        print("Все ключи словаря:")
        allKeysFromDict(myDict: ageDictThree)
        
    
        print("======================================================")
    
        print("Collection Types. Medium. Task 3")
        let arrayNumbersValues = [1, 7, 2, 16, 12, 75, 122, 3, 55, 7, 1]
        print("Initial array values are: \(arrayNumbersValues)")
        sortArrayValues(myArray: arrayNumbersValues)
        
        uniqueElementsFrom(myArray: arrayNumbersValues)
    }
}


// Homework 3. Task 1. Создать​ ​строку​ ​со​ ​своим​ ​именем.​ ​Написать​ ​метод​ ​который​ ​получает​ ​это​ ​имя​ ​и возвращает​ ​кол-во​ ​символов​ ​в​ ​строке​ ​с​ ​вашим​ ​именем.​ ​Возвращенное​ ​значение показать​ ​в​ ​консоль
    
    func countLettersInName(name: String) -> Int {
        let amountOfLetters = name.characters.count
        
        return amountOfLetters
    }
    
// Homework 3. Task 2. Написать​ ​метод​ ​который​ ​принимает​ ​2​ ​слова,​ ​например​ ​имя​ ​и​ ​фамилию, возвращает​ ​юзернейм​ ​который​ ​имеет​ ​буквы​ ​нижнего​ ​регистра​ ​и​ ​разделяет​ ​имя​ ​и фамилию​ ​символом​ ​“_”
    
    func usernameWithLowercaseAndDash(firstName: String, lastName: String) -> String {
        let firstNameLowercased = firstName.lowercased()
        let lastNameLowercased = lastName.lowercased()
        let finalUserName = firstNameLowercased + "_" + lastNameLowercased
        
        return finalUserName
    }
    
// Homework 3. Task 3.	Создать​ ​строку​ ​с​ ​именем​ ​и​ ​своим​ ​отчеством.​ ​Создать​ ​метод​ ​который​ ​проверит его​ ​на​ ​окончание​ ​“ич/на”.​ ​Выводит​ ​“М”​ ​или​ ​“Ж”​ ​в​ ​зависимости​ ​от​ ​окончания.​ ​Также учитывать​ ​регистр​ ​букв,​ ​то​ ​есть​ ​ИЧ​ ​или​ ​Ич​ ​или​ ​На​ ​и​ ​тд. Подсказка:​ ​в​ ​классе​ ​написан​ ​метод​ ​который​ ​позволяет​ ​проверить​ ​на​ ​суффикс или​ ​префикс,​ ​найдите​ ​и​ ​используйте​ ​его

    func checkIfUserManOrWoman(userPatronymic: String) -> String {
        let userPatronymicLowercased = userPatronymic.lowercased()
        if userPatronymicLowercased.hasSuffix("на") {
            return "is Female"
        } else if userPatronymicLowercased.hasSuffix("ич") {
            return "is Male"
        } else {
            return "can't be identified, because incorrect patronymic"
        }
    }
    

//Homework 3. Colection Types. Task 2. Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
  //    РЕШЕНИЕ СМОТРЕТЬ ВЫШЕ :)

    
// Homework 3. Colection Types. Task 2.	Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.
  //    РЕШЕНИЕ СМОТРЕТЬ ВЫШЕ :)
    
// Homework 3. Colection Types. Task 3.	Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
    
    func elementsOfArrayInRow(myNumbersInArray: [String]) {
        for element in myNumbersInArray {
            print(element)
        }
    }
    
// Homework 3. Colection Types. Task 4.	Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметромть как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
    
    func firstAndLastElementsInArray(stringArray: [String]) -> [String] {
        if stringArray.isEmpty {
            return ["Array is empty"]
        } else {
            let arrayFromFirstAndLastElements: [String] = [stringArray.first!] + [stringArray.last!]
            return arrayFromFirstAndLastElements
        }
    }


// Homework 3. Colection Types. Task 5.	Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Добавить в данный массив еще 2 новых элемента.
  //    РЕШЕНИЕ СМОТРЕТЬ ВЫШЕ :)
    
// Homework 3. Colection Types. Task 6.	Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    
    func removeSecondElementFromDict(name: String, age: Int) {
//     не поняла задание
    }


//Homework 3. Colection Types. Medium. Task 1.
//Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк).
//например массив
//let array = [“one”, “two”]
//и если передать в этот метод “one“ то должно вернуть true
//а если передать “three” то должно вернуть false

func checkIfElementInArray(srtingArrayMedium: [String], elementMedium: String) -> Bool {
    let result = srtingArrayMedium.contains(elementMedium) ? true : false
    return result
}


// Homework 3. Colection Types. Medium. Task 2.
//    метод который выведет все ключи словаря
 
    func allValuesFromDict(myDict: [String: Int]) {
        for value in myDict.values {
            print("\(value)")
    }
}
    
//    метод который выведет все значения словаря
    
func allKeysFromDict(myDict: [String: Int]) {
    for key in myDict.keys {
        print("\(key)")
    }
}

// Homework 3. Colection Types. Medium. Task 3.
//сортировка массива не встроенным методом по возрастанию + удалить дубликаты
//Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36]
//Результат должен быть [1, 2, 3, 6, 13, 36, 77]

func sortArrayValues(myArray: [Int]) {
    let descendingOrderOfArray: [Int] = myArray.sorted { $0 < $1 }
    print("Sorted array values are: \(descendingOrderOfArray)")
}

func uniqueElementsFrom(myArray: [Int]) -> [Int] {
    var set = Set<Int>()
    let result = myArray.filter {
        guard !set.contains($0) else {
            return false
        }
        set.insert($0)
        return true
    }
    print("Unique elements from array are: \(result)")
    return result
}

// Homework 3. Colection Types. Medium. Task 4.
//Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными. Их мы будем передавать в метод, который напишем.
//Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
















//        Tests :)
//        var firstNumber = 10
//        while firstNumber > 0 {
//            print(firstNumber)
//            firstNumber-=1
//        }
//
//
//        var myArray = [1, 15, 135, 10, 99]
//        for numbers in myArray {
//
//            print(numbers)
//        }
//
//        var myNumberList = [1, 5, 7]
//        for i in 0 ..< myNumberList.count {
//            print(myNumberList[i])
//        }
//
//        let myNumberListReverse = [1, 5, 7, 10]
//        for i in myNumberListReverse.reversed() {
//            print(i)
//        }
//
//        let myNumberListReverseTwo = [1, 5, 7, 10]
//        for i in myNumberListReverseTwo {
//            print(i)
//        }
