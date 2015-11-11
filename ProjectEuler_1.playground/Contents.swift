//: Playground - noun: a place where people can play

import UIKit

//          Problem 1 - Multiples of 3 and 5

//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

//Find the sum of all the multiples of 3 or 5 below 1000.


func sumOfMultiples(maxNumber: Int) -> Int {

    var multipleArray : [Int] = []
    var sum : Int = 0

    for i in 1..<maxNumber {
        if i % 3 == 0 || i % 5 == 0 {
            multipleArray.append(i)
            sum += i
        }
    }

    return sum
}

sumOfMultiples(1000)