//
//  LeetcodeQueue.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/19.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

protocol Queue {
    associatedtype Element
    
    var isEmpty: Bool { get }
    var size: Int { get }
    var peek: Element? { get }
    
    mutating func enqueue(_ item: Element)
    mutating func dequeue() -> Element?
}

struct LeetcodeQueue<T>: Queue {
    typealias Element = T
    
    private var left: [T] = []
    private var right: [T] = []
    
    mutating func enqueue(_ item: T) {
        right.append(item)
    }
    
    mutating func dequeue() -> T? {
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        return left.popLast()
    }
}

extension LeetcodeQueue {
    var isEmpty: Bool {
        return left.isEmpty && right.isEmpty
    }
    
    var size: Int {
        return left.count + right.count
    }
    
    var peek: T? {
        return left.isEmpty ? right.first : left.last
    }
}

// For testing
struct TestQueue {
    func test() {
        var queue: LeetcodeQueue<Int> = LeetcodeQueue()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        queue.enqueue(4)
        queue.enqueue(5)
        queue.enqueue(6)
        
        print("queue: \(queue), count: \(queue.size), peek: \(String(describing: queue.peek!))")
        
        let firstItem = queue.dequeue()
        let secondItem = queue.dequeue()
        let thirdItem = queue.dequeue()
        print("queue.first: \(String(describing: firstItem)), second:\(String(describing: secondItem)), third: \(String(describing: thirdItem))")
        
        print("queue: \(queue), count: \(queue.size), peek: \(String(describing: queue.peek!))")
    }
}
