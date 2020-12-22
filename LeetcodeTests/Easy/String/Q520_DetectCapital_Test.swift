//
//  Q520_DetectCapital_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/22.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q520_DetectCapital_Test: SYBaseTestCase {

    var sut: Q520_DetectCapital?
    
    override func setUp() {
        super.setUp()
        sut = Q520_DetectCapital()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("abab"), output: true)
        case1.verify(with: "520", desc: "check test case 1, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("USA"), output: true)
        case2.verify(with: "520", desc: "check test case 2, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ("Abcdefg"), output: true)
        case3.verify(with: "520", desc: "check test case 3, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: ("FlAG"), output: false)
        case4.verify(with: "520", desc: "check test case 4, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
