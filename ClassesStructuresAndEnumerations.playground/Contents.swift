import UIKit

// Classes

class Animal {
    var name: String
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    init(name: String, sound: String, numberOfLegs: Int, breathesOxygen: Bool) {
        self.name = name
        self.sound = sound
        self.numberOfLegs = numberOfLegs
        self.breathesOxygen = breathesOxygen
    }
    func makeSound() {
        print(self.sound)
    }
}

// making an instance of the class

//let cat = Animal(name: "Cat", sound: "Meow", numberOfLegs: 4, breathesOxygen: true)
//print(cat.name)


// making a subclass
// Mammal is the subclass of Animal, Animal class is the parent class or the superclass of the mammal class
class Mammal: Animal {
    let hasFurOrHair: Bool = true
}

let cat = Mammal(name: "Cat", sound: "Meow", numberOfLegs: 4, breathesOxygen: true)
print(cat.hasFurOrHair)





// Structs
// Classes are reference types and structures are value types
// structures automatically get an initialiser for all properties, called memberwise initialiser

struct Reptile {
    var name: String
    var sound: String
    var numberOfLegs: Int
    var breathesOxygen: Bool
    let hasFurOrHair: Bool = false
    func makeSound() {
        print(sound)
    }
    func description() -> String {
        return "Structure: Reptile name: \(self.name), sound: \(self.sound), numberOfLegs: \(self.numberOfLegs), breathesOxygen: \(self.breathesOxygen), hasFurOrHair: \(self.hasFurOrHair)"
    }
}


var snake = Reptile(name: "Snake", sound: "Hiss", numberOfLegs: 0, breathesOxygen: true)
print(snake.description())
snake.makeSound()




// Because a was assigned to be, it creates a copy sampleProperty value of a, 2 separate instances that don't affect each other

struct SampleValueType {
    var sampleProperty = 10
}
var a = SampleValueType()
var b = a
b.sampleProperty = 20
print(a.sampleProperty)
print(b.sampleProperty)


// Any changes made to c or d affect the same SampleReferenceType instance

class SampleReferenceType {
    var sampleProperty = 10
}
var c = SampleReferenceType()
var d = c
c.sampleProperty = 20
print(c.sampleProperty)
print(d.sampleProperty)




// ENUMERATIONS

enum TrafficLightColour {
    case red
    case yellow
    case green
    func description() -> String {
        switch self {
        case.red:
            return "red"
        case.yellow:
            return "yellow"
        case.green:
            return "green"
        }
    }
}
var trafficLightColour = TrafficLightColour.red
print(trafficLightColour.description())
