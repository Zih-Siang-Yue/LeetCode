//
//  Q922-SortArraybyParity_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q922_SortArraybyParity_Test: SYBaseTestCase {

    var sut: Q922_SortArraybyParity?
    
    override func setUp() {
        super.setUp()
        sut = Q922_SortArraybyParity()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [4,2,5,7], output: [4,5,2,7])
        case1.verify(with: "922", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [2,3], output: [2,3])
        case2.verify(with: "922", desc: "check test case 2, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
