//
//  main.swift
//  Data_Structures_stack
//
//  Created by Zodino BLR on 4/9/21.
//  Copyright © 2021 Zodino BLR. All rights reserved.
//

import Foundation


print("Program begin...")

var quit: Bool = false

while quit == false {
    print("Write the equation")
    guard let command = readLine() else { continue }
    switch command.lowercased() {
    case is String?:
        quit = true
    default:
        print("Unknown command...")
    }
    
    var write = command
    
    let array = write.characters.map{String($0)}
    var checkingBrakets: [String] = []
    
    for i in array {
        if i == "("{
            checkingBrakets.append(i)
        }
        if i == ")" {
            checkingBrakets.append(i)
        }
    }
    
    
    if checkingBrakets == ["(", ")"] {
        print("example is correct")
    } else {
        print("example is not correct")
    }
}
