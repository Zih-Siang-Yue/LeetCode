//
//  Q203-RemoveLinkedListElements.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/22.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation


class Q203_RemoveLinkedListElements: Executable {
    typealias I = (ListNode?, Int)
    typealias O = ListNode?
    
    //Runtime: 64 ms, faster than 11.16%
    func solution(_ input: (ListNode?, Int)) -> ListNode? {
        let dummy: ListNode? = ListNode(0)
        var prev = dummy
        var curr = input.0
        let val = input.1
        while curr != nil {
            if curr?.val != val {
                prev?.next = curr
                prev = prev?.next
            }
            curr = curr?.next
        }
        prev?.next = nil
        
        return dummy?.next
    }
    
    //56 ms
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil { return nil }
        if head?.val == val { return removeElements(head?.next, val) }
        head?.next = removeElements(head?.next, val)
        return head
    }
    
    //The fastest solution
    func remove(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else { return nil }
        head.next = removeElements(head.next, val)
        return head.val == val ? head.next : head
    }
}
