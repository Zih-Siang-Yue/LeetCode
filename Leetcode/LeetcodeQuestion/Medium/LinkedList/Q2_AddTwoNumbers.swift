//
//  Q2_AddTwoNumbers.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q2_AddTwoNumbers: Executable {
    
    typealias I = (ListNode?, ListNode?)
    typealias O = ListNode?
    
    func execute() {
        let l1nextNext = ListNode(3)
        l1nextNext.next = ListNode(5)
        let l1next = ListNode(4)
        l1next.next = l1nextNext
        let l1 = ListNode(2)
        l1.next = l1next
        
        let l2next = ListNode(6)
        l2next.next = ListNode(4)
        let l2 = ListNode(5)
        l2.next = l2next
        
        let output = addTwoNumber(l1, l2)
        print("leetcode2 ouput: val -> \(output!.val) next -> \(String(describing: output?.next))")
    }
    
    func addTwoNumber(_ l1: ListNode?,_ l2: ListNode?) -> ListNode? {   // (2 -> 4 -> 3) + (5 -> 6 -> 4)
        return solution((l1, l2)) //l1(val:2, next:4 -> 3) + l2(val:5, next:6 -> 4)
    }
    
    func solution(_ input: (ListNode?, ListNode?)) -> ListNode? {
        return solution1(input.0, input.1, 0)
    }
    
    private func solution1(_ l1: ListNode?, _ l2: ListNode?,_ carry: Int) -> ListNode? {
        guard l1 != nil || l2 != nil else {
            return carry > 0 ? ListNode(carry) : nil  //l1 == nil && l2 == nil 進入判斷
        }
        let x = l1?.val ?? 0
        let y = l2?.val ?? 0
        let value = x + y + carry           //2 + 5 + 0 = 7     //4 + 6 + 0 = 10    // 3 + 4 + 1 = 8
        let r1 = ListNode(value % 10)  //ListNode val: 7, next =   //ListNode val: 0, next //ListNode val: 8, next:
        r1.next = solution1(l1?.next, l2?.next, value / 10)   //addTwoNumbers(0, 0, 0)
        return r1
    }
    //input:  (6 -> 4 -> 6) + (4 -> 7 -> 3)
    //output: (0 -> 2 -> 0 -> 1)
}
