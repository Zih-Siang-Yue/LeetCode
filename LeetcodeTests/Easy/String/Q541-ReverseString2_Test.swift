//
//  Q541-ReverseString2_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/13.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q541_ReverseString2_Test: SYBaseTestCase {

    var sut: Q541_ReverseString2?
    
    override func setUp() {
        super.setUp()
        sut = Q541_ReverseString2()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("abcdefg", 2), output: "bacdfeg")
        case1.verify(with: "541", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("abcd", 2), output: "bacd")
        case2.verify(with: "541", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ("abcdefghij", 3), output: "cbadefihgj")
        case3.verify(with: "541", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
         
        let case4 = TestCase(input: ("abcd", 4), output: "dcba")
        case4.verify(with: "541", desc: "check test case 4, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case5 = TestCase(input: ("abcdefg", 8), output: "gfedcba")
        case5.verify(with: "541", desc: "check test case 5, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
