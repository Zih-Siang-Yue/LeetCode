//
//  Q203-RemoveLinkedListElements_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/4/22.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q203_RemoveLinkedListElements_Test: SYBaseTestCase {

    var sut: Q203_RemoveLinkedListElements?
    
    override func setUp() {
        super.setUp()
        sut = Q203_RemoveLinkedListElements()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let testcase1List: ListNode? = ListNode(1)
        testcase1List?.next = ListNode(2)
        testcase1List?.next?.next = ListNode(6)
        testcase1List?.next?.next?.next = ListNode(3)
        testcase1List?.next?.next?.next?.next = ListNode(4)
        testcase1List?.next?.next?.next?.next?.next = ListNode(5)
        testcase1List?.next?.next?.next?.next?.next?.next = ListNode(6)
        
        let verified1List: ListNode? = ListNode(1)
        verified1List?.next = ListNode(2)
        verified1List?.next?.next = ListNode(3)
        verified1List?.next?.next?.next = ListNode(4)
        verified1List?.next?.next?.next?.next = ListNode(5)

        let case1 = TestCase(input: (testcase1List, 6), output: verified1List)
        case1.verify(with: "203", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
