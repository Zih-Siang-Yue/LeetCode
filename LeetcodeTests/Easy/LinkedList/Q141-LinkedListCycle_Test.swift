//
//  Q141-LinkedListCycle_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/4/21.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q141_LinkedListCycle_Test: SYBaseTestCase {

    var sut: Q141_LinkedListCycle?
    
    override func setUp() {
        super.setUp()
        sut = Q141_LinkedListCycle()
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
        
        let case1 = TestCase(input: node1, output: true)
        case1.verify(with: "141", desc: "check test case 1, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        node2?.next = node1
        node1?.next = node2
        
        let case2 = TestCase(input: node1, output: true)
        case2.verify(with: "141", desc: "check test case 2, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
