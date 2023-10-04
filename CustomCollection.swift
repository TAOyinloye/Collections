//a collection of ages of humans
class AgeCollection : Collection {
 
    var items = [Int]()
    
    var startIndex: Int {
        return items.startIndex
    }
    
    var endIndex: Int {
        return items.endIndex
    }
    
    subscript(index: Int) -> Int {
        return items[index]
    }
    
    func index(after i: Int) -> Int {
        return items.index(after: i)
    }
    
    //only valid ages can be added
    func append(age: Int) -> Bool {
        if (age >= 0 && age <= 120){
            items.append(age)
            return true
        }
        return false
    }
}