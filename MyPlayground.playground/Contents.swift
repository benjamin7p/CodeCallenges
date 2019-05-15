//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


let number = 9 % 4
//print(number)





for index in 1...100 {
   
   let three = index%3
    if three == 0 {
       // print("3 into \(index)")
    }
    
}

//for index in 1...100 {
//    if index % 3 == 0 {
//        print("\(index) is divisible by 3, so MountianLand")
//    }
//    if index % 5 == 0 {
//        print("\(index) is divisible by 5, so Technical")
//    }
//    if index % 3 == 0, index % 5 == 0 {
//        print("\(index) is divisible by both 3 & 5, so MountainLand Technical College")
//    }
//    if index % 3 != 0, index % 5 != 0 {
//        print("\(index) is not divisible by 3 or 5")
//    }
//    if index % 3 == 0, index % 5 == 0 {
//        print("\(index) is divisible by 3 & 5")
//    }
//
//}


func Mtech() {
    for index in 1...100 {
        let mountainLand = "MoutainLand"
        let by3 = index % 3
        let technical = "Technical"
        let by5 = index % 5
        if by3 == 0 {
            print("\(mountainLand)")
        } else {
            if by5 == 0 {
                print("\(technical)")
        } else {
            if by3 == 0, by5 == 0 {
                print("\(mountainLand) \(technical) College")
                
            }
            
        }
//        else {
//            if index % 3 == 0, index % 5 == 0 {
//                print("\(index) is divisible by 3 & 5")
//            }
//        }
        
        
        if index % 3 != 0, index % 5 != 0 {
            // print("\(index) is not divisible by 3 or 5")
        }
        
        }
    }
    
}


func stuff()  {
    for index in 1...100 {
        if index % 3 == 0 {
            print("MountianLand")
        }
        if index % 5 == 0 {
            print("Technical")
        }
        if index % 3 == 0, index % 5 == 0 {
            print("MountainLand Technical College")
        }
        else {
            things(index: index)
            
        }
    }
   
}

func things(index: Int) {
    if index != 0 {
        print("\(index)")
    }
}


var indexArray: [Int] = []

func loop(){
    
    for index in 1...100 {
        //var index: Int = 0
        if index % 3 == 0 {
            print("MountianLand \(index)")
        }
        if index % 5 == 0 {
            print("Technical \(index)")
        }
        if index % 3 == 0 && index % 5 == 0 {
            print("MountainLand Technical College \(index)")
            indexArray.append(index)
        }
        else {
            if index % 3 != 0, index % 5 != 0 {
                print(index)
            
                
                
            }
            
        }
        
    }
}

loop()
print(indexArray)
