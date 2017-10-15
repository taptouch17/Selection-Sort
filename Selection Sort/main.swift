//
//  main.swift
//  Selection Sort
//
//  Created by Graeme Stoute on 15/10/2017.
//  Copyright © 2017 Graeme Stoute. All rights reserved.
//

import Foundation

print("Hello, World!")

func selectionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }  // 1
    
    var a = array                    // 2
    
    for x in 0 ..< a.count - 1 {     // 3
        
        var lowest = x
        for y in x + 1 ..< a.count {   // 4
            if a[y] < a[lowest] {
                lowest = y
            }
        }
        
        if x != lowest {               // 5
            a.swapAt(x, lowest)
        }
    }
    return a
}

let array = [12,14,3,5,2,7,100,21]

print(selectionSort(array))
