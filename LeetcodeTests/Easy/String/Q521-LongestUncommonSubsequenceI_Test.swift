//
//  Q521-LongestUncommonSubsequenceI_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/2/18.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q521_LongestUncommonSubsequenceI_Test: SYBaseTestCase {

    var sut: Q521_LongestUncommonSubsequenceI?
    
    override func setUp() {
        super.setUp()
        sut = Q521_LongestUncommonSubsequenceI()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("aba", "cdc"), output: 3)
        case1.verify(with: "521", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("aefawfawfawfaw", "aefawfeawfwafwaef"), output: 17)
        case2.verify(with: "521", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: ("aaa", "aaa"), output: -1)
        case3.verify(with: "521", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
