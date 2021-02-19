//
//  Q696-CountBinarySubstrings_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/2/17.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q696_CountBinarySubstrings_Test: SYBaseTestCase {

    var sut: Q696_CountBinarySubstrings?
    
    override func setUp() {
        super.setUp()
        sut = Q696_CountBinarySubstrings()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "00110011", output: 6)
        case1.verify(with: "696", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "10101", output: 4)
        case2.verify(with: "696", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: "110001111000000", output: 9)
        case3.verify(with: "696", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
