//
//  Q20-ValidParentheses_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q20_ValidParentheses_Test: SYBaseTestCase {

    var sut: Q20_ValidParentheses?

    override func setUp() {
        super.setUp()
        sut = Q20_ValidParentheses()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "()", output: true)
        case1.verify(with: "20", desc: "check test case 1, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case2 = TestCase(input: "()[]{}", output: true)
        case2.verify(with: "20", desc: "check test case 2, plz.") { [weak self] (input) -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: "(]", output: false)
        case3.verify(with: "20", desc: "check test case 3, plz.") { [weak self] (input) -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: "([)]", output: false)
        case4.verify(with: "20", desc: "check test case 4, plz.") { [weak self] (input) -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case5 = TestCase(input: "{[]}", output: true)
        case5.verify(with: "20", desc: "check test case 5, plz.") { [weak self] (input) -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
