//
//  Q24-SwapNodesinPairs_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/4/20.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q24_SwapNodesinPairs_Test: SYBaseTestCase {

    var sut: Q24_SwapNodesinPairs?
    
    override func setUp() {
        super.setUp()
        sut = Q24_SwapNodesinPairs()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let inputList: ListNode? = ListNode(1)
        inputList?.next = ListNode(2)
        inputList?.next?.next = ListNode(3)
        inputList?.next?.next?.next = ListNode(4)
        
        let verifiedList: ListNode? = ListNode(2)
        verifiedList?.next = ListNode(1)
        verifiedList?.next?.next = ListNode(4)
        verifiedList?.next?.next?.next = ListNode(3)
        
        let case1 = TestCase(input: inputList, output: verifiedList)
        case1.verify(with: "24", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
       
    }

}
