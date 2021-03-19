//
//  Q409-LongestPalindrome_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/19.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q409_LongestPalindrome_Test: SYBaseTestCase {

    var sut: Q409_LongestPalindrome?
    
    override func setUp() {
        super.setUp()
        sut = Q409_LongestPalindrome()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "abccccdd", output: 7)
        case1.verify(with: "409", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "a", output: 1)
        case2.verify(with: "409", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: "bb", output: 2)
        case3.verify(with: "409", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
