//: Playground - noun: a place where people can play

import UIKit

//Project Euler Problem 6
//Sum Square Difference

//The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385
//The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)2 = 552 = 3025
//Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


//Brute Force
func sumSquares(maxNum: Int) -> Int {

    var sum = 0

    for i in 1...maxNum {
        sum += (i * i)
    }

    return sum
}

func squareSum(maxNum: Int) -> Int {

    var sum = 0

    for i in 1...maxNum {
        sum += i
    }

    return (sum * sum)
}

let differenceAmt = squareSum(100) - sumSquares(100)

//Arithmatic 
//Sum of Natural Squares: S(n) = n(n + 1) / 2
//Square of Naturl Sums: S2(n) = n(n + 1)(2n + 1) / 6

func arithSums(maxNum: Int) -> Int {

    return ((maxNum * (maxNum + 1)) / 2)
}

func arithSquares(maxNum: Int) -> Int {

    return (maxNum * (maxNum + 1) * ((2 * maxNum) + 1)) / 6
}

let differenceArith = (arithSums(100) * arithSums(100)) - arithSquares(100)
