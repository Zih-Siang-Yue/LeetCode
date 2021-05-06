//
//  Q237-DeleteNodeinaLinkedList_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/6.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q237_DeleteNodeinaLinkedList_Test: SYBaseTestCase {

    var sut: Q237_DeleteNodeinaLinkedList?
    
    override func setUp() {
        super.setUp()
        sut = Q237_DeleteNodeinaLinkedList()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let iNode1: ListNode? = ListNode(4)
        let iNode2: ListNode? = ListNode(5)
        let iNode3: ListNode? = ListNode(1)
        let iNode4: ListNode? = ListNode(9)
        iNode1?.next = iNode2
        iNode2?.next = iNode3
        iNode3?.next = iNode4
        

        let oNode1: ListNode? = ListNode(4)
        let oNode2: ListNode? = ListNode(1)
        let oNode3: ListNode? = ListNode(9)
        oNode1?.next = oNode2
        oNode2?.next = oNode3
        
        let case1 = TestCase(input: iNode2, output: oNode2)
        case1.verify(with: "237", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
