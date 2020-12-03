//
//  Q62-UniquePaths_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/3.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q62_UniquePaths_Test: SYBaseTestCase {

    var sut: Q62_UniquePaths?
    
    override func setUp() {
        super.setUp()
        sut = Q62_UniquePaths()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: (3, 3), output: 6)
        case1.verify(with: "62", desc: "") { [weak self] (input) -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
