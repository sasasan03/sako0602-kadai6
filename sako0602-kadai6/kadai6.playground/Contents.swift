import SwiftUI

//var array = [0,1,2,3,4,5]
//if let unwrappedArray = array.randomElement(){
//    print(unwrappedArray)
//} else {
//    print("nil")
//}
//
//if unwrappedArray == 2 {
//    print("一緒")
//} else {
//    print("残念")
//}

//var message = false

var randomValue = arc4random_uniform(5)

func judgement(inputNnm: inout Int) {
    if randomValue == inputNnm {
    //    message = true
        print("正解")
    } else {
    //    message = true
        print("残念")
    }
}
var inputNum: Int = 3
judgement(inputNnm: &inputNum)



