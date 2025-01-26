import Cocoa

class Animal{
    let legs: Int
    init(legs: Int){
        self.legs = legs
    }
    
    func speak(){
        print("Animal makes a sound")
    }
}

class Dog: Animal{
    
     init() {
         super.init(legs: 4)
    }
    
    override func speak() {
        print("Dog barks")
    }
}

final class Corgi: Dog{
  
    override func speak() {
        print("Corgi barks and whines")
    }
}

final class Poodle: Dog{

    
    override func speak() {
        print("Poodle barks and trills")
    }
}


class Cat: Animal{
    let isTame: Bool
    
    init(isTame:Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
}

final class Siamese: Cat{
     init( ) {
         super.init(isTame: true)
    }
    
    override func speak() {
        print("Siamese meows")
    }
}

final class lion: Cat{
    init( ) {
        super.init(isTame: false)
    }
    
    override func speak() {
        print("Lion roars")
    }
}


let myDog: Dog = Corgi()
myDog.speak()
let myCat: Cat = Siamese()
myCat.speak()

let neighborDog: Dog = Poodle()
neighborDog.speak()
let neighborCat: Cat = lion()
neighborCat.speak()
