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

        stackChallenge2Solution()
    }
}

extension TestViewController {
    private func stackTest1() {
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
    
    private func stackTest2() {
        var stack = Stack(elements: ["A", "B", "C", "D"])
        print(stack)
        stack.pop()
        print(stack)
    }
    
    private func stackTest3() {
        var stack: Stack = [1.0, 2.0, 3.0, 4.0]
        print(stack)
        stack.pop()
        print(stack)
    }
    
    private func stackChallenge1() {
        let array = [1, 2, 3, 4, 5]
        
        func printInReverse<T>(_ array: [T]) {
            var stack = Stack(elements: array)
            
            while let element = stack.pop() {
                print(element)
            }
        }
        
        printInReverse(array)
    }
    
    private func stackChallenge2Try() {
        var testString1 = "h((e))llo(world)()"
        
        func checkBalance(text: String) -> Bool {
            let textArray = testString1.compactMap { String($0) }
            var stack: Stack = Stack(elements: textArray)
            
            var paranthesisCount: Int = 0
            
            while let letter = stack.pop() {
                if letter == "(" || letter == ")" {
                    paranthesisCount += 1
                }
            }
            
            return paranthesisCount > 0 && paranthesisCount % 2 == 0
        }
        
        print(checkBalance(text: testString1))
        //this solution is only interested in the count. not the asthetic balance.
    }
    
    private func stackChallenge2Solution() {
        var testString1 = "h((e))llo(world)()"
        
        func checkBalance(text: String) -> Bool {
            var stack = Stack<Character>()
            
            for character in testString1 {
                if character == "(" {
                    stack.push(character)
                } else if character == ")" {
                    if stack.isEmpty {
                        return false
                    } else {
                        stack.pop()
                    }
                }
            }
            return stack.isEmpty
        }
        print(checkBalance(text: testString1))
    }
}
