//
//  Q18-4Sum_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/3.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q18_4Sum_Test: SYBaseTestCase {

    var sut: Q18_4Sum?

    override func setUp() {
        super.setUp()
        sut = Q18_4Sum()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: ([-2,-1,-1,1,1,2,2], 0), output: [[-2, -1, 1, 2], [-1, -1, 1, 1]])
        case1.verify(with: "18", desc: "check test case 1, plz.") { [weak self] (integers, sum) -> [[Int]] in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution((integers, sum))
        }
    }
}
