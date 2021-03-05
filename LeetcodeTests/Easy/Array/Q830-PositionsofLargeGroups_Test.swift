//
//  Q830-PositionsofLargeGroups_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/5.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q830_PositionsofLargeGroups_Test: SYBaseTestCase {

    var sut: Q830_PositionsofLargeGroups?
    
    override func setUp() {
        super.setUp()
        sut = Q830_PositionsofLargeGroups()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "abbxxxxzzy", output: [[3,6]])
        case1.verify(with: "830", desc: "check test case 1, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "aac", output: [[0,2]])
        case2.verify(with: "830", desc: "check test case 2, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: "abcdddeeeeaabbbcd", output: [[3,5],[6,9],[12,14]])
        case3.verify(with: "830", desc: "check test case 3, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
