//
//  Q21-MergeTwoSortedLists.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/20.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q21_MergeTwoSortedLists: Executable {
    typealias I = (ListNode?, ListNode?)
    typealias O = ListNode?
    
    //Runtime: 12 ms, faster than 82.91%
    func solution(_ input: (ListNode?, ListNode?)) -> ListNode? {
        let l1 = input.0
        let l2 = input.1
        
        guard l1?.val != nil || l2?.val != nil else {
            return nil
        }
        
        var node: ListNode
        let l1Val = l1?.val ?? Int.max
        let l2Val = l2?.val ?? Int.max
        if l1Val < l2Val {
            node = ListNode(l1Val)
            node.next = solution((l1?.next, l2))
        }
        else {
            node = ListNode(l2Val)
            node.next = solution((l1, l2?.next))
        }
        return node
    }
    
    //Runtime: 12 ms, faster than 82.91%
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        var l1 = l1
        var l2 = l2
        let dummy: ListNode? = ListNode(0)
        var pre = dummy
        while l1 != nil && l2 != nil {
            if l1!.val > l2!.val {
                pre?.next = l2
                l2 = l2?.next
            }
            else {
                pre?.next = l1
                l1 = l1?.next
            }
            pre = pre?.next
        }
        
        pre?.next = l1 == nil ? l2 : l1
        return dummy?.next
    }
}
