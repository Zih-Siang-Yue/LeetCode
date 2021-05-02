//
//  Q1-TwoSum_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q1_TwoSum_Test: SYBaseTestCase {

    var sut: Q1_TwoSum?
    
    override func setUp() {
        super.setUp()
        sut = Q1_TwoSum()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([2, 7, 11, 18], 9), output: [0, 1])
        case1.verify(with: "1", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
