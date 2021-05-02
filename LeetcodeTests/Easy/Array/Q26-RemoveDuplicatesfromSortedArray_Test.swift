//
//  Q26-RemoveDuplicatesfromSortedArray_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q26_RemoveDuplicatesfromSortedArray_Test: SYBaseTestCase {

    var sut: Q26_RemoveDuplicatesfromSortedArray?
    
    override func setUp() {
        super.setUp()
        sut = Q26_RemoveDuplicatesfromSortedArray()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [1,1,2], output: 2)
        case1.verify(with: "26", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [0,0,1,1,1,2,2,3,3,4], output: 5)
        case2.verify(with: "26", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
