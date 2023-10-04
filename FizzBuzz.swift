//fizzbuzz by multiple
func fizzBuzz(number: Int) -> String{
    
    if number % 15 == 0 {
        return "FizzBuzz"
    }
    if number % 5 == 0{
        return "Buzz"
    }
    if number % 3 == 0{
        return "Fizz"
    }
    return String(number)
}

func fizzBuzzSequence(upTo number: Int) -> String{
    
    var sequence = String()
    
    for i in 1...number {
        sequence += fizzBuzz(number: i)
        
        //append comma and space
        if i != number {
            sequence += ", "
        }
    }
    return sequence
}
print("FizzBuzz based on multiples of 3 and 5")
print(fizzBuzzSequence(upTo: 100))
print()

//FizzBuzz by digit
func fizzBuzzByDigit(number: Int) -> String{
    
    let numberString = String(number)
    
    let chars = Array(numberString.characters)
    
    if chars.contains("3") && chars.contains("5"){
        return "FizzBuzz"
    }
    
    if chars.contains("3") {
        return "Fizz"
    }
    
    if  chars.contains("5"){
        return "Buzz"
    }
    return numberString
}

func fizzBuzzByDigitSequence(upTo number: Int) -> String{
    
    var sequence = String()
    
    for i in 1...number {
        sequence += fizzBuzzByDigit(number: i)
        
        //append comma and space
        if i != number {
            sequence += ", "
        }
    }
    return sequence
}
print("FizzBuzz based on characters 3 and 5")
print(fizzBuzzByDigitSequence(upTo: 100))
