import UIKit

let myRange = 10...20

let myRange2 = 10..<20

// for-in loop repeats itself for known number of times
// while and repeat-while loops repeat as long as the loop condition is true

// FOR-IN LOOPS

//for item in sequence {
//    code
//}

for number in myRange {
    print(number)
}

for number in (0...5).reversed() {
    print(number)
}


// WHILE LOOPS

//while condition == true {
//    code
//}

var y = 0
while y < 50 {
    y += 5
    print("y is \(y)")
}


// REPEAT-WHILE LOOPS

//repeat {
//    code
//} while condition == true

var x = 0
repeat {
    x += 5
    print("x is  \(x)")
} while x < 50

