//
//  Q160-IntersectionofTwoLinkedLists_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/5.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q160_IntersectionofTwoLinkedLists_Test: SYBaseTestCase {

    var sut: Q160_IntersectionofTwoLinkedLists?
    
    override func setUp() {
        super.setUp()
        sut = Q160_IntersectionofTwoLinkedLists()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let headA1: ListNode? = ListNode(4)
        let headA2: ListNode? = ListNode(1)
        
        let headI1: ListNode? = ListNode(8)
        let headI2: ListNode? = ListNode(4)
        let headI3: ListNode? = ListNode(5)
        
        headA1?.next = headA2
        headA2?.next = headI1
        headI1?.next = headI2
        headI2?.next = headI3
        
        let headB1: ListNode? = ListNode(5)
        let headB2: ListNode? = ListNode(6)
        let headB3: ListNode? = ListNode(1)
        
        headB1?.next = headB2
        headB2?.next = headB3
        headB3?.next = headI1
        
        
        let case1 = TestCase(input: (headA1, headB1), output: headI1)
        case1.verify(with: "160", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
