//
//  Q24-SwapNodesinPairs.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/20.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q24_SwapNodesinPairs: Executable {
    typealias I = ListNode?
    typealias O = ListNode?
    
    func solution(_ input: ListNode?) -> ListNode? {
        guard let h = input else  { return input }
        
        var curr: ListNode? = h
        while curr != nil {
            if let val = curr?.val,
               let nextVal = curr?.next?.val {
                curr?.val = nextVal
                curr?.next?.val = val
            }
            
            curr = curr?.next?.next
        }
        return h
    }
}
