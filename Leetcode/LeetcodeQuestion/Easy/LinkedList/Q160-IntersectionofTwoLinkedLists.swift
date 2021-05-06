//
//  Q160-IntersectionofTwoLinkedLists.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/5.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q160_IntersectionofTwoLinkedLists: Executable {
    typealias I = (ListNode?, ListNode?)
    typealias O = ListNode?
    
    //＊Note that the linked lists must retain their original structure after the function returns.＊
    //Runtime: 280 ms, faster than 41.39%
    func solution(_ input: (ListNode?, ListNode?)) -> ListNode? {
        let headA = input.0
        let headB = input.1
        
        if headA == nil || headB == nil { return nil }

        
        var a = headA
        var b = headB

        while a !== b {
            a = a == nil ? headB : a?.next
            b = b == nil ? headA : b?.next
        }
        return a
    }
    
    //260ms
    func fatestSolution(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        let (countA, lastA) = getCount(headA)
        let (countB, lastB) = getCount(headB)
        
        if lastA !== lastB {
            return nil
        }
        
        var longer = countA >= countB ? headA : headB
        var shorter = countA >= countB ? headB : headA
        
        var diff = abs(countA - countB)
        while diff > 0 {
            longer = longer!.next
            diff -= 1
        }
        
        while longer !== shorter {
            longer = longer!.next
            shorter = shorter!.next
        }
        
        return longer
    }
    
    func getCount(_ head: ListNode?) -> (Int, ListNode?) {
        
        var count = 0
        var node = head
        var prevNode: ListNode? = nil
        while node != nil {
            prevNode = node
            node = node!.next
            count += 1
        }
        return (count, prevNode)
    }
    
    // Naive iterative using two stacks of traversed nodes and then unwinding back
    // Time O(n), space O(n)
    func getIntersectionNode_Space(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil { return nil }
        
        var stackA = [ListNode](), stackB = [ListNode]()
        var headA = headA
        
        while headA != nil {
            stackA.append(headA!)
            headA = headA!.next
        }
        
        var headB = headB
        while headB != nil {
            stackB.append(headB!)
            headB = headB!.next
        }
        
        var commonNode: ListNode? = nil
        while !stackA.isEmpty && !stackB.isEmpty {
            if stackA.last === stackB.last {
                commonNode = stackA.last
                stackA.removeLast()
                stackB.removeLast()
            }
            else {
                break ;
            }
        }
        
        return commonNode
    }
}
