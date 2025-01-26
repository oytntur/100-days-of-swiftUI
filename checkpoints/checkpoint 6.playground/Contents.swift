import Cocoa

struct Car {
    let model:String
    let numberOfSeats:Int
    private(set) var currentGear=0 {
        willSet {
            print("Changing gear from \(currentGear) to \(newValue)")
        }
        didSet {
            print("Gear changed to \(currentGear)")
        }
    }
    
    
    mutating func changeGear(to gear:Int){
        if(gear >= 0 || gear <= 10){
            currentGear = gear
        }
    }
}

struct Truck {
    let model:String
    let numberOfSeats:Int
    var currentGear:Int {
        set {
            if(newValue >= 0 || newValue <= 10){
                print("Truck Changing gear from \(currentGear) to \(newValue)")
                self.currentGear = newValue
                print("Truck Gear changed to \(currentGear)")
            }
        }
        get {
            return currentGear
        }
    }
}


var myCar = Car(model: "Toyota Corolla", numberOfSeats: 4)
myCar.changeGear(to: 1)

myCar.changeGear(to: 10)


var myTruck = Truck(model: "Ford F-150", numberOfSeats: 2)
myTruck.currentGear = 1
myTruck.currentGear = 10





