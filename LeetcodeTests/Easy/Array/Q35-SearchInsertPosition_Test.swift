//
//  Q35-SearchInsertPosition_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q35_SearchInsertPosition_Test: SYBaseTestCase {

    var sut: Q35_SearchInsertPosition?
    
    override func setUp() {
        super.setUp()
        sut = Q35_SearchInsertPosition()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([1,3,5,6], 5), output: 2)
        case1.verify(with: "35", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ([1,3,5,6], 2), output: 1)
        case2.verify(with: "35", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ([1,3,5,6], 7), output: 4)
        case3.verify(with: "35", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: ([1,3,5,6], 0), output: 0)
        case4.verify(with: "35", desc: "check test case 4, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case5 = TestCase(input: ([1], 0), output: 0)
        case5.verify(with: "35", desc: "check test case 5, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
