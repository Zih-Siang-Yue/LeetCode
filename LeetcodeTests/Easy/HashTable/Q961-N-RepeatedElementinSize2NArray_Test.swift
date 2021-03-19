//
//  Q961-N-RepeatedElementinSize2NArray_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/16.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q961_N_RepeatedElementinSize2NArray_Test: SYBaseTestCase {

    var sut: Q961_N_RepeatedElementinSize2NArray?
    
    override func setUp() {
        super.setUp()
        sut = Q961_N_RepeatedElementinSize2NArray()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [1,2,3,3], output: 3)
        case1.verify(with: "961", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [2,1,2,5,3,2], output: 2)
        case2.verify(with: "961", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: [5,1,5,2,5,3,5,4], output: 5)
        case3.verify(with: "961", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
