//
//  Q876-MiddleoftheLinkedList.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/26.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q876_MiddleoftheLinkedList: Executable {
    typealias I = ListNode?
    typealias O = ListNode?
    
    // Runtime: 4 ms, faster than 36.28%
    func solution(_ input: ListNode?) -> ListNode? {
        let count = nunberOfListNote(input)
        let middle = count / 2 + 1
        return findtheMiddleLinkedList(input, middle, currentIndex: 1)
    }
    
    func nunberOfListNote(_ node: ListNode?) -> Int {
        var node = node
        var count = 0
        while true {
            if node != nil {
                count += 1
                node = node?.next
                continue
            }
            break
        }
        return count
    }
    
    func findtheMiddleLinkedList(_ node: ListNode?, _ middle: Int, currentIndex: Int) -> ListNode? {
        if middle != currentIndex {
            return findtheMiddleLinkedList(node?.next, middle, currentIndex: currentIndex+1)
        }
        return node
    }
    
    // Runtime: 0 ms, faster than 100.00%
    func thefastestSolution(_ input: ListNode?) -> ListNode? {
        var slow = input
        var fast = input
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
    
}
