//
//  main.swift
//  Lesson2
//
//  Created by Toyosi Oyinloye on 04/10/2023.
//

import Foundation

//Print "Hello World"

print("Hello, World!")


//Create Shopping list -Array

var shoppingList = ["Eggs", "Milk", "Honey", "Coffee", "Chocolate"]

//Print Shopping list

print(shoppingList)

print("---------------------")


//Modify shopping list

shoppingList.append("juice")


print(shoppingList)


shoppingList += ["Bread", "Juice", "Carrots"]

print(shoppingList)
print("---------------------")

shoppingList.insert("Washing Powder", at: 4)

print(shoppingList)

shoppingList.remove(at: 6)

//Count the number of items in the array

print(shoppingList.count)

//Check if shopping list is empty

if shoppingList.isEmpty {
    print("empty")
} else {
    print("not empty")
}

//Iteration

for index in 0...8 {
    print(shoppingList[index])
}

for(index,value) in shoppingList.enumerated()
{
    print("item \(index + 1)):  \(value)")
}


//Iteration with increment other than one

for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}

//Check content of array
if shoppingList.contains("Milk") {
    print ("Yes")
} else {
    print ("No")
    
}

//Check position of "Chocolate and replce it with "Cocoa"

if let i = shoppingList.firstIndex(of: "Chocolate") {
    shoppingList[i] = "Cocoa"
}


print(shoppingList)


//Create a Set
//Initialise and empty set of type 'String'

var mySet = Set<String>()

//Create a mutable Set and initialise with values

var  myNewSet = Set(["one", "two", "three"])

//Check content of Set
var kontain = mySet.contains("two")

print(kontain)

//Clear content of Set
mySet.removeAll()

print(mySet)
  
//Count the number of items in the Set
print("There are \(myNewSet.count) items here")

//Other set related checks

let houseAnimals: Set = ["Dog", "Cat"]

let farmAnimals: Set = ["Cow", "Chicken", "Sheep", "Cat", "Dog"]
                        
let cityAnimals: Set = ["Parrot", "Mouse"]


print (houseAnimals.isSubset(of: farmAnimals))
print (farmAnimals.isSuperset(of: houseAnimals))
print(farmAnimals.isDisjoint(with: cityAnimals))

//Create a mutable Dictionary.
//If you want to just create an empty dictionary, you will still have to tell the compiler the Key and value types

var myDictionary1 =  [String: String] ()  //key is type -String, value is type -String
var myDictionary2 =  [Int: String] ()   //key is type -Int, value is type -String
var myDictionary = Dictionary<String, String> ()  //key is type -String, value is type -String


//Accessing Dictionary
//nameOfPlace type is optional by default -compiler gives a warning

let myPlaces = ["LHR": "london Heathrow", "LGW": "London Gatwick"]  //key is type -String, value is type -String
var nameOfPlace = myPlaces["LHR"]
print (nameOfPlace)
 
//nameOP is optional by default -Force-unwrap - Not recommended

myDictionary2 = [1: "Liverpool", 2: "Manchester", 3: "Chester"] //key is type -Int, value is type -String
var nameOP = myDictionary2[1]
print(nameOP!)  //Force-unwrap to avoid warning, not recommended!


//Variable may not have a value at the point of use: Declare as optional
//nameOfP declared as optional String

var nameOfP : String?
myDictionary1 = ["Liv": "Liverpool", "Man": "Manchester", "Ches": "Chester"] //key is type -String, value is type -String
nameOfP = myDictionary1["Ches"]
print(nameOfP!)
                
                
