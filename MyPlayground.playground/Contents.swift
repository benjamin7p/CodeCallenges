//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport




var indexArray: [Int] = []

func loop(){
    
    for index in 0...100 {
        if index % 3 != 0, index % 5 != 0 && index != 0 {
            print(index)
        }
        
        if index % 3 == 0 && index % 5 == 0 && index != 0 {
                       print("MountainLand Technical College \(index)")
            indexArray.append(index)
            
        }
        
        if index % 3 == 0 && index != 0 {
                       print("MountianLand \(index)")
        }
        if index % 5 == 0 && index != 0 {
                      print("Technical \(index)")
        }
    }
}


loop()
print(indexArray)
