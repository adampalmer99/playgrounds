import UIKit

//func serviceCharge() {
//    let mealCost = 50
//    let serviceCharge = mealCost / 10
//    print("Service charge is \(serviceCharge)")
//}
//serviceCharge()

//func serviceCharge(mealCost: Int) -> Int {
//    return mealCost / 10
//}
//
//let serviceChargeAmount = serviceCharge(mealCost: 50)
//print(serviceChargeAmount)

func serviceCharge(forMealPrice mealCost: Int) -> Int {
    return mealCost / 10
}
let serviceChargeAmount = serviceCharge(forMealPrice: 50)
print(serviceChargeAmount)

// nested functions

func calculateMonthlyPayments(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) -> Double {
    func loanAmount() -> Double {
        return carPrice - downPayment
    }
    func totalInterest() -> Double {
        return interestRate * paymentTerm
    }
    func numberOfMonths() -> Double {
        return paymentTerm * 12
    }
    return ((loanAmount() + (loanAmount() * totalInterest() / 100)) / numberOfMonths())
}
calculateMonthlyPayments(carPrice: 50000, downPayment: 5000, interestRate: 3.5, paymentTerm: 7.0)

// over 7 years pay 666.96 a month on car payments


// using functions as return types

func makePi() -> (() -> Double) {
    func generatePi() -> Double {
        return 22.0 / 7.0
    }
    return generatePi
}
let pi = makePi()
print(pi())


// using functions as parameters

func isThereAMatch(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {
    for item in listOfNumbers {
        if condition(item) {
            return true
        }
    }
    return false
}
func oddNumber(number: Int) -> Bool {
    return (number % 2) > 0
}
var numbersList = [2, 4, 6, 7]
isThereAMatch(listOfNumbers: numbersList, condition: oddNumber)



// using a guard statement to exit a function early

func buySomething(itemValueEntered itemValueField: String, cardBalance: Int) -> Int {
    guard let itemValue = Int(itemValueField)
    else {
        print("Error in item value")
        return cardBalance
    }
    let remainingBalance = cardBalance - itemValue
    return remainingBalance
}
print(buySomething(itemValueEntered: "10", cardBalance: 50))
print(buySomething(itemValueEntered: "Blue", cardBalance: 50))





// Closures


var numbersArray = [2, 4, 6, 7]
let myClosure = { (number: Int) -> Int in
    let result = number * number
    return result
}
let mappedNumbers = numbersArray.map(myClosure)


// Simplifying closures

var testNumbers = [2, 4, 6, 7]
let mappedTestnumbers = testNumbers.map({ number in
    number * number
    
})
print(mappedTestnumbers)
