//
//  Q28-ImplementstrStr_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q28_ImplementstrStr_Test: SYBaseTestCase {

    var sut: Q28_ImplementstrStr?
    
    override func setUp() {
        super.setUp()
        sut = Q28_ImplementstrStr()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("hello", "ll"), output: 2)
        case1.verify(with: "28", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("aaaaa", "bba"), output: -1)
        case2.verify(with: "28", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ("", ""), output: 0)
        case3.verify(with: "28", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
