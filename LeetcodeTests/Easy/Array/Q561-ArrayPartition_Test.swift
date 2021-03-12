//
//  Q561-ArrayPartition_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/9.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q561_ArrayPartition_Test: SYBaseTestCase {

    var sut: Q561_ArrayPartition?
    
    override func setUp() {
        super.setUp()
        sut = Q561_ArrayPartition()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [1,4,3,2], output: 4)
        case1.verify(with: "561", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [6,2,6,5,1,2], output: 9)
        case2.verify(with: "561", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: [1,2,3,4,5,6,7,8], output: 16)
        case3.verify(with: "561", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
