//
//  Q142-LinkedListCycle2.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/4/21.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q142_LinkedListCycle2: Executable {
    typealias I = ListNode?
    typealias O = ListNode?
    
    func solution(_ input: ListNode?) -> ListNode? {
        if input == nil || input?.next == nil { return nil }
        
        var slow = input
        var fast = input
        while slow?.next != nil || fast?.next != nil || fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
               break
            }
        }
        slow = input
        while slow !== fast {
            slow = slow?.next
            fast = fast?.next
        }
        return slow
    }
}
