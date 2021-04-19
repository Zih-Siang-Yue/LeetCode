//
//  LeetcodeStack.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/9/17.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

protocol Stack {
    associatedtype Element
    
    var isEmpty: Bool { get }
    var size: Int { get }
    var peek: Element? { get }
    
    mutating func push(_ item: Element)
    mutating func pop() -> Element?
}

struct LeetcodeStack<T: Comparable>: Stack {
    typealias Element = T
    
    private var stack: [T] = []
    private var mins: [T] = []
    private var maxes: [T] = []
    
    mutating public func push(_ item: T) {
        stack.append(item)
        
        if let min = mins.last {
            min > item ? mins.append(item) : mins.append(min)
        }
        else {
            mins.append(item)
        }
        
        if let max = maxes.last {
            max < item ? maxes.append(item) : maxes.append(max)
        }
        else {
            maxes.append(item)
        }
    }
    
    mutating public func pop() -> T? {
        if !mins.isEmpty { self.mins.removeLast() }
        if !maxes.isEmpty { self.maxes.removeLast() }
        return stack.popLast()
    }
    
    public func getMax() -> T? {
        return maxes.last
    }
    
    public func getMin() -> T? {
        return mins.last
    }
    
    public func getFirst() -> T? {
        return stack.first
    }
}

extension LeetcodeStack {
    var isEmpty: Bool { return stack.isEmpty }
    var size: Int { return stack.count }
    var peek: Element? { return stack.last }
}


// For testing
struct TestStack {
    func test() {
        var stack: LeetcodeStack<Int> = LeetcodeStack()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
        stack.push(5)
        
        print("stack: \(stack), count: \(stack.size), peek: \(String(describing: stack.peek!))")
        
        let firstItem = stack.pop()!
        let secondItem = stack.pop()!
        let thirdItem = stack.pop()!
        print("stack.first: \(String(describing: firstItem)), second:\(String(describing: secondItem)), third: \(String(describing: thirdItem))")
        
        print("stack: \(stack), count: \(stack.size), peek: \(String(describing: stack.peek!))")
    }
}
