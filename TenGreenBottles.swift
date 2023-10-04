func bottles(number: Int) -> String {
    
    var rhyme = "\(number) green bottles hanging on the wall, \(number) green bottles hanging on the wall, and if 1 green bottle should accidentally fall, there'd be \(number - 1) green bottles hanging on the wall. \r"
    
    if number > 1 {
        rhyme += bottles(number: number-1)
    }
    
    return rhyme
}



//or in one line, with proper pluralisation
func tenGreenBottles(bottles: Int) -> String { return "\(bottles) green bottle" + ((bottles != 1) ? "s" : "") + ", hanging on the wall, \(bottles) green bottle"+((bottles != 1) ? "s" : "")+", hanging on the wall and if one green bottle should accidentally fall, there'd be \(bottles - 1) green bottle" + ((bottles != 2) ? "s" : "") + " hanging on the wall. \n" + ((bottles - 1 > 0) ? tenGreenBottles(bottles: bottles - 1) : "")}