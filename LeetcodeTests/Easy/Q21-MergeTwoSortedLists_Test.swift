//
//  Q21-MergeTwoSortedLists_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/4/20.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q21_MergeTwoSortedLists_Test: SYBaseTestCase {

    var sut: Q21_MergeTwoSortedLists?
    
    override func setUp() {
        super.setUp()
        sut = Q21_MergeTwoSortedLists()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let lList: ListNode? = ListNode(1)
        lList?.next = ListNode(2)
        lList?.next?.next = ListNode(4)
        
        let rList: ListNode? = ListNode(1)
        rList?.next = ListNode(3)
        rList?.next?.next = ListNode(4)
        
        let verifiedList: ListNode? = ListNode(1)
        verifiedList?.next = ListNode(1)
        verifiedList?.next?.next = ListNode(2)
        verifiedList?.next?.next?.next = ListNode(3)
        verifiedList?.next?.next?.next?.next = ListNode(4)
        verifiedList?.next?.next?.next?.next?.next = ListNode(4)

        
        let case1 = TestCase(input: (lList, rList), output: verifiedList)
        case1.verify(with: "21", desc: "check test case 1, plz.") { [weak self] input -> (ListNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
       
    }

}
