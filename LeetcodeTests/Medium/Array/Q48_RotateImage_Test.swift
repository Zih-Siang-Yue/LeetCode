//
//  Q48_RotateImage_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/3.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q48_RotateImage_Test: SYBaseTestCase {

    var sut: Q48_RotateImage?
    
    override func setUp() {
        super.setUp()
        sut = Q48_RotateImage()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]], output: [[13, 9, 5, 1], [14, 10, 6, 2], [15, 11, 7, 3], [16, 12, 8, 4]])
        case1.verify(with: "48", desc: "check test case 1, plz.") { [weak self] (input) -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
