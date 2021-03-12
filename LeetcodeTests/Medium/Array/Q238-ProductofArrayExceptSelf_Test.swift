//
//  Q238-ProductofArrayExceptSelf_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/12.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q238_ProductofArrayExceptSelf_Test: SYBaseTestCase {

    var sut: Q238_ProductofArrayExceptSelf?
    
    override func setUp() {
        super.setUp()
        sut = Q238_ProductofArrayExceptSelf()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [1,2,3,4], output: [24,12,8,6])
        case1.verify(with: "238", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [0,0], output: [0,0])
        case2.verify(with: "238", desc: "check test case 2, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
