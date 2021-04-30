//
//  Q142-LinkedListCycle2_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/4/30.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode
class Q142_LinkedListCycle2_Test: SYBaseTestCase {

    var sut: Q142_LinkedListCycle2?
    
    override func setUp() {
        super.setUp()
        sut = Q142_LinkedListCycle2()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let node4: ListNode? = ListNode(-4)
        let node3: ListNode? = ListNode(0)
        let node2: ListNode? = ListNode(2)
        let node1: ListNode? = ListNode(3)

        node4?.next = node2
        node3?.next = node4
        node2?.next = node3
        node1?.next = node2
        
        let case1 = TestCase(input: node1, output: node2)
        case1.verify(with: "142", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2Node2: ListNode? = ListNode(2)
        let case2Node1: ListNode? = ListNode(1)

        case2Node2?.next = case2Node1
        case2Node1?.next = case2Node2

        let case2 = TestCase(input: case2Node1, output: case2Node1)
        case2.verify(with: "142", desc: "check test case 2, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
