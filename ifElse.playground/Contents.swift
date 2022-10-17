

func loveCalc() {
    let loveScore = Int.random(in: 0...100)

//    if loveScore > 80 {
//        print("You love each other like kanye love kanye")
//    }
//    if loveScore > 40 && loveScore <= 80 {
//        print("coke n mentos")
//    } else {
//        print("forever alone")
//    }
//}
//
//loveCalc()
//

switch loveScore {
case 81...100:
    print("love like kanye love kanye")
case 41..<81:
    print("coke n mentos")
case ...40:
    print("nope")
default:
    print("Error")
}

}

loveCalc()
