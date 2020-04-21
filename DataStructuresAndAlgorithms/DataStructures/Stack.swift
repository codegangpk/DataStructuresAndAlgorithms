//
//  Stack.swift
//  DataStructuresAndAlgorithms
//
//  Created by Paul Kim on 2020/04/21.
//  Copyright © 2020 Paul Kim. All rights reserved.
//

import Foundation

struct Stack<Element> {
    private var storage: [Element] = []
    
    init(elements: [Element]? = nil) {
        storage = elements ?? []
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        """
        ----top----
        \(storage.map { "\($0)" }.joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack {
    //push and pop both have O(1) time complexity
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
}

extension Stack {
    var peek: Element? {
        storage.last
    }
    
    var isEmpty: Bool {
        peek == nil
    }
}
