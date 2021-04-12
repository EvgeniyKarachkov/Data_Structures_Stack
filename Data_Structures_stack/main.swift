//
//  main.swift
//  Data_Structures_stack
//
//  Created by Siarhei Siliukou on 12.04.21.
//

import Foundation
print("Program begin...")


func analyzeExpresssion(expression: String?) {
    guard let expression = expression else {
        print("Nothing to analyze")
        return
    }
    
    var stack = Stack<String>()
    let charachters = convert(expr: expression)
    
    for char in charachters {
        if char == "(" {
            stack.push(char)
        }
        
        if char == ")" {
            _ = stack.pop()
        }
    }
    
    if stack.isEmpty == true {
        print("Our expression \(expression) is right")
    } else {
        print("Our expression \(expression) is NOT right")
    }
}

private func convert(expr: String) -> [String] {
    return expr.characters.flatMap({String($0)})

}

var isQuit: Bool = false

while isQuit == false {
    print("Please, enter command:")
    let currentCommand = readLine()
    guard let command = currentCommand else {
        continue
    }
    
    switch command {
    case "q":
        isQuit = true
    case "expr":
        let expr = readLine()
        analyzeExpresssion(expression: expr)
    default:
        break
    }
}

print("Program end...")

