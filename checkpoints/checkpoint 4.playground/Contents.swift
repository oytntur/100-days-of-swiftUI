import Cocoa



enum MyError: Error {
    case tooSmall
    case tooLarge
    case noRoot
}

let myNumber = 121
do {
    let result = try getSquareRoot(myNumber)
    print("Square root of \(myNumber) is \(result)")
} catch {
    switch error {
    case MyError.tooSmall:
        print("Number is too small")
    case MyError.tooLarge:
        print("Number is too large")
    case MyError.noRoot:
        print("No square root")
    default:
        print("Something went wrong")
    }
}


func getSquareRoot(_ n: Int) throws -> Int {
    
    if n<1{
        throw MyError.tooSmall
    }
    
    if n>1000000{
        throw MyError.tooLarge
    }
    
    var squareOfNumbers:[Int:Int]=[:]

    for i in 1...1000000{
        squareOfNumbers[i*i] = i
    }
    
   
    
    let result:Int? = squareOfNumbers[n]
    
    if  result != nil{
        return result!
    }
    else {
        throw MyError.noRoot
    }
    
}
