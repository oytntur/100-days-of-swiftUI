import Cocoa

func getRandom(_ array:[Int]?) -> Int{
    return array?.randomElement() ?? Int.random(in:0...100)
}


getRandom([1,2,3,4,5])
