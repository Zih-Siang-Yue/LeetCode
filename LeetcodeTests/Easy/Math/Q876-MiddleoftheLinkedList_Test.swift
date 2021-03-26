//
//  Q876-MiddleoftheLinkedList_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/26.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q876_MiddleoftheLinkedList_Test: SYBaseTestCase {

    var sut: Q876_MiddleoftheLinkedList?
    
    override func setUp() {
        super.setUp()
        sut = Q876_MiddleoftheLinkedList()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let node5: ListNode? = ListNode(5)
        let node4: ListNode? = ListNode(4)
        let node3: ListNode? = ListNode(3)
        let node2: ListNode? = ListNode(2)
        let node1: ListNode? = ListNode(1)

        node4?.next = node5
        node3?.next = node4
        node2?.next = node3
        node1?.next = node2
        
        let case1 = TestCase(input: node1, output: node3)
        case1.verify(with: "876", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        node5?.next = ListNode(6)
        
        let case2 = TestCase(input: node1, output: node4)
        case2.verify(with: "876", desc: "check test case 2, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
