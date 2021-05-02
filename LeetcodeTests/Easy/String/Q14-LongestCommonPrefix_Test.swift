//
//  Q14-LongestCommonPrefix_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q14_LongestCommonPrefix_Test: SYBaseTestCase {

    var sut: Q14_LongestCommonPrefix?
    
    override func setUp() {
        super.setUp()
        sut = Q14_LongestCommonPrefix()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ["flower","flow","flight"], output: "fl")
        case1.verify(with: "14", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ["dog","racecar","car"], output: "")
        case2.verify(with: "14", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
