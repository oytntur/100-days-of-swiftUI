import Cocoa

protocol Building {
    var rooms: Int { get }
    var cost : Int { get }
    var estateAgentName : String { get }
    func summary() -> String
}


struct Office: Building {
    var rooms: Int = 1
    var cost: Int = 100000
    var estateAgentName: String = "John Doe"
    
    func summary() -> String {
        return "This is an office building with \(rooms) rooms, costing \(cost) pounds, managed by \(estateAgentName)."
    }
}

struct House: Building {
    var rooms: Int = 3
    var cost: Int = 500000
    var estateAgentName: String = "Jane Doe"
    
    func summary() -> String {
        return "This is a house with \(rooms) rooms, costing \(cost) pounds, managed by \(estateAgentName)."
    }
}

let myOffice = Office()
print(myOffice.summary())

let myHouse = House()
print(myHouse.summary())

print("Hello, World!")
