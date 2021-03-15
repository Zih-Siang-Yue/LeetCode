//
//  Q347-TopKFrequentElements_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/15.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q347_TopKFrequentElements_Test: SYBaseTestCase {

    var sut: Q347_TopKFrequentElements?
    
    override func setUp() {
        super.setUp()
        sut = Q347_TopKFrequentElements()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([1,1,1,2,2,3], 2), output: [1,2])
        case1.verify(with: "347", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ([1], 1), output: [1])
        case2.verify(with: "347", desc: "check test case 2, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
