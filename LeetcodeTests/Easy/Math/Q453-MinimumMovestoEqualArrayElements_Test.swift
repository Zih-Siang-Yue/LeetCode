//
//  Q453-MinimumMovestoEqualArrayElements_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/26.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q453_MinimumMovestoEqualArrayElements_Test: SYBaseTestCase {

    var sut: Q453_MinimumMovestoEqualArrayElements?
    
    override func setUp() {
        super.setUp()
        sut = Q453_MinimumMovestoEqualArrayElements()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [1,2,3], output: 3)
        case1.verify(with: "453", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [1,1,1], output: 0)
        case2.verify(with: "453", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
