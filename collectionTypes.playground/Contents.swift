import UIKit

// Arrays

var shoppingList = ["Eggs", "Milk"]
print(shoppingList[0])


shoppingList.count
shoppingList.isEmpty

// adding new elements to array

shoppingList.append("Bread")

shoppingList.insert("Chicken", at: 1)


shoppingList[2]

shoppingList[2] = "Soy Milk"
shoppingList

shoppingList.remove(at: 1)
shoppingList
 
for shoppingListItem in shoppingList {
    print(shoppingListItem)
}





// Dictionaries

var contactList = ["Adam" : "01482650540", "Bruce" : "01482230111"]

contactList.count
contactList.isEmpty

contactList["James"] = "12345567565"
contactList

contactList["Adam"] = "123"

contactList

contactList["James"] = nil
contactList






// Sets

var movieGenres : Set = ["Horror", "Action", "Comedy"]

movieGenres.count
movieGenres.isEmpty

// Adding new elements to sets
movieGenres.insert("War")
movieGenres

//Checking whether set contains an element
movieGenres.contains("War")

// Removing from a set
// Action is removed from movieGenres and added to oldSetValue
var oldSetValue = movieGenres.remove("Action")
oldSetValue
movieGenres

// iterating over a set
for genre in movieGenres {
    print(genre)
}

// Set operations

let movieGenres2: Set = ["Science Fiction", "War", "Fantasy"]
// union returns new set containing all values in both sets
movieGenres.union(movieGenres2)

// intersection returns new set containing only the values common to both sets
movieGenres.intersection(movieGenres2)

// subtracting returns a new set without the values in the specified set(movieGenres2)
movieGenres.subtracting(movieGenres2)

// symmetricDifference returns a new set without the values common to both sets
movieGenres.symmetricDifference(movieGenres2)


// set membership and equality
let movieGenresSubset: Set = ["Horror", "Romantic Comedy"]
let movieGenresSuperset: Set = ["Horror", "Romantic Comedy", "War", "Science Fiction", "Fantasy"]
let movieGenresDisjoint: Set = ["Bollywood"]
movieGenres == movieGenres2
movieGenresSubset.isSubset(of: movieGenres)
movieGenresSuperset.isSuperset(of: movieGenres)
movieGenresDisjoint.isDisjoint(with: movieGenres)
