//
//  Q7-ReverseInteger_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q7_ReverseInteger_Test: SYBaseTestCase {

    var sut: Q7_ReverseInteger?
    
    override func setUp() {
        super.setUp()
        sut = Q7_ReverseInteger()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: 123, output: 321)
        case1.verify(with: "7", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: 0, output: 0)
        case2.verify(with: "7", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: -123, output: -321)
        case3.verify(with: "7", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: 120, output: 21)
        case4.verify(with: "7", desc: "check test case 4, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
