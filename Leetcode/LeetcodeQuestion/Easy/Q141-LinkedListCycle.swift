//
//  Q141-LinkedListCycle.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/4/21.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q141_LinkedListCycle: Executable {
    typealias I = ListNode?
    typealias O = Bool
    
    //Runtime: 68 ms, faster than 40.48%
    func solution(_ input: ListNode?) -> Bool {
        var slow = input
        var fast = input?.next  //一般快慢指針初始點一樣即可, 此處leetcode改過題目
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow == fast {
                return true
            }
        }
        return false
    }
}
