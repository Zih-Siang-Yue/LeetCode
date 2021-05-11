//
//  Q1071-GreatestCommonDivisorofStrings_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/11.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode
class Q1071_GreatestCommonDivisorofStrings_Test: SYBaseTestCase {

    var sut: Q1071_GreatestCommonDivisorofStrings?
    
    override func setUp() {
        super.setUp()
        sut = Q1071_GreatestCommonDivisorofStrings()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("ABCABC", "ABC"), output: "ABC")
        case1.verify(with: "1071", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("ABABAB", "ABAB"), output: "AB")
        case2.verify(with: "1071", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ("LEET", "CODE"), output: "")
        case3.verify(with: "1071", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: ("ABCDEF", "ABC"), output: "")
        case4.verify(with: "1071", desc: "check test case 4, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
