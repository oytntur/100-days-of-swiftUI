import Cocoa

var luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let stringArray = luckyNumbers.filter{
    $0 % 2 != 0
}.sorted{
    $0 < $1
}
.map{
    return "\($0) is lucky number "
}





for string in stringArray {
    print(string)
}
