//
//  Q39_CombinationSum_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/3.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q39_CombinationSum_Test: SYBaseTestCase {

    var sut: Q39_CombinationSum?
    
    override func setUp() {
        super.setUp()
        sut = Q39_CombinationSum()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: ([2, 3, 5], 8), output: [[2,2,2,2],[2,3,3],[3,5]])
        case1.verify(with: "39", desc: "check test case 1, plz.") { [weak self] (integers, sum) -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution((integers, sum))
        }
    }
}
