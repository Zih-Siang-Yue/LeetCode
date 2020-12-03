//
//  Q16-3SumClosest_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/3.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q16_3SumClosest_Test: SYBaseTestCase {

    var sut: Q16_3SumClosest?
    
    override func setUp() {
        super.setUp()
        sut = Q16_3SumClosest()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: ([1, 1, 1 ,1], -100), output: 3)
        case1.verify(with: "16", desc: "check test case 1, plz.") { [weak self] (integers, sum) -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution((integers, sum))
        }
    }

}
