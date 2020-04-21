//
//  TestViewController.swift
//  DataStructuresAndAlgorithms
//
//  Created by Paul Kim on 2020/04/21.
//  Copyright © 2020 Paul Kim. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        test1()
        test2()
        test3()
    }
}

extension TestViewController {
    private func test1() {
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    
        print(stack)
        
        if let poppedElement  = stack.pop() {
            assert(4 == poppedElement)
            print("Popped: \(poppedElement)")
        }
    }
    
    private func test2() {
        var stack = Stack(elements: ["A", "B", "C", "D"])
        print(stack)
        stack.pop()
        print(stack)
    }
    
    private func test3() {
        var stack: Stack = [1.0, 2.0, 3.0, 4.0]
        print(stack)
        stack.pop()
        print(stack)
    }
}
