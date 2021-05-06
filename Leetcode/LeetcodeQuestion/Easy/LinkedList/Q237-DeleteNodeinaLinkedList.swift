//
//  Q237-DeleteNodeinaLinkedList.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/6.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q237_DeleteNodeinaLinkedList: Executable {
    typealias I = ListNode?
    typealias O = ListNode?
    
    func solution(_ input: ListNode?) -> ListNode? {
        if input == nil || input?.next == nil { return input }
        
        let node = input
        node?.val = node!.next!.val
        node?.next = node?.next?.next
        return node
    }
}
