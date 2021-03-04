//
//  Q119-PascalsTriangle2_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q119_PascalsTriangle2_Test: SYBaseTestCase {
    var sut: Q119_PascalsTriangle2?
    
    override func setUp() {
        super.setUp()
        sut = Q119_PascalsTriangle2()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: 3, output: [1,3,3,1])
        case1.verify(with: "119", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: 0, output: [1])
        case2.verify(with: "119", desc: "check test case 2, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: 1, output: [1,1])
        case3.verify(with: "119", desc: "check test case 3, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
