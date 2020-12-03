//
//  Q15-3Sum_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/2.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q15_3Sum_Test: SYBaseTestCase {

    var sut: Q15_3Sum?

    override func setUp() {
        super.setUp()
        sut = Q15_3Sum()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let testCase1 = TestCase(input: [-2,0,1,1,2], output: [[-2,1,1], [-2,0,2]])
        testCase1.verify(with: "15", desc: "check test case 1, plz.") { [weak self] (input) -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
