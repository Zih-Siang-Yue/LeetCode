//
//  Q415_AddStrings_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/21.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q415_AddStrings_Test: SYBaseTestCase {
    
    var sut: Q415_AddStrings?

    override func setUp() {
        super.setUp()
        sut = Q415_AddStrings()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("0", "0"), output: "0")
        case1.verify(with: "415", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case2 = TestCase(input: ("9", "99"), output: "108")
        case2.verify(with: "415", desc: "check test case 2, plz.") { [weak self] (input) -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ("1234567890", "987654321"), output: "49")  // expectation value: 1
        case3.verify(with: "415", desc: "check test case 3, plz.") { [weak self] (input) -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
