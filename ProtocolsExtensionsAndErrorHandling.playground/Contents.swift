import UIKit

// Protocols define a blueprint of methods, properties, and other requirements that can be adopted by a class, structure or enumeration.
// Extensions enable you to provide new functionality for an existing class, structure or enumeration
// Error handling covers how to responds to and recover from errors in your program



class Burger: CalorieCount {
    let calories = 800
    func description() -> String {
        return "This burger has \(calories) calories"
    }
}
struct Fries: CalorieCount {
    let calories = 500
    func description() -> String {
        return "These fries have \(calories) calories"
    }
}
enum Sauce {
    case chili
    case tomato
}

extension Sauce: CalorieCount {
    var calories: Int {
        switch self {
        case .chili:
            return 20
        case .tomato:
            return 15
        }
    }
    func description() -> String {
        return "This sauce has \(calories) calories"
    }
}

protocol CalorieCount {
    var calories: Int { get }
    func description() -> String
}



// Creating an array of different types of objects

let burger = Burger()
let fries = Fries()
let sauce = Sauce.tomato
let foodArray: [CalorieCount] = [burger, fries, sauce]
var totalCalories = 0
for food in foodArray {
    totalCalories += food.calories
}
print(totalCalories)



// Error handling

enum WebsiteError: Error {
    case noInternetConnection
    case siteDown
    case wrongURL
}

func checkWebsite(siteUp: Bool) throws -> String {
    if siteUp == false {
        throw WebsiteError.siteDown
    }
    return "Site is up"
}
let siteStatus = false
do {
    print(try checkWebsite(siteUp: siteStatus))
} catch {
    print(error)
}


