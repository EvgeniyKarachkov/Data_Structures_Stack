//
//  Stack.swift
//  Data_Structures_stack
//
//  Created by Siarhei Siliukou on 12.04.21.
//

import Foundation

struct Stack<Element> {
    
    private var storage :[Element] = []
    
    init() {}
    
    mutating func push(_ element :Element) {
        storage.append(element)
    }
    
    mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    var isEmpty: Bool {
        return (storage.count == 0)
    }
}
