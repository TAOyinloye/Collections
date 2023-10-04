//create array
var array = ["Cat","Dog","Elephant","Mouse","Hamster","Cow","Pigeon","Leopard"]

//1. count array items
print("There are \(array.count) items in the array")

//2. remove last object from array
array.removeLast()

//3. remove fourth object from array
array.remove(at: 3)

//4. add Horse to end of Array (could also use +=)
array.append("Horse")

//5. Add zebra to second position
array.insert("Zebra", at: 1)

//6 write all items out to the log
for animal in array{
    print(animal+", ")
}
print()

//7. write first three items to the log
print("First 3 items:")
for index in 0...2{
    print(array[index] + ", ")
}
print()

//8. find index of elephant
//swift 2
var elephantIndex = array.firstIndex(of:"Elephant")

if let actualElephantIndex = elephantIndex{
    print("Elephant is at index \(actualElephantIndex)")
}

//9. remove Dog from array
//create function to find index of string (in Main this needs to written above the method call)
var dogPosition = array.firstIndex(of: "Dog") // indexOfStringInArray("Dog", array: array)
if let foundDogIndex = dogPosition{
    array.remove(at:foundDogIndex)
}

//output array to log again to check Dog is removed
for animal in array{
    print(animal+", ")
}
