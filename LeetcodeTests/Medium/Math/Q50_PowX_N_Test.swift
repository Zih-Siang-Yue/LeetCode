//
//  Q50_PowX_N_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q50_PowX_N_Test: SYBaseTestCase {

    var sut: Q50_PowX_N?
    
    override func setUp() {
        super.setUp()
        sut = Q50_PowX_N()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: (2.00000, 10), output: 1024.00000)
        case1.verify(with: "50", desc: "check test case 1, plz.") { [weak self] input -> (Double) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: (2.00000, -2), output: 0.25000)
        case2.verify(with: "50", desc: "check test case 2, plz.") { [weak self] (input) -> (Double) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
