//
//  Q434_NumberofSegmentsinaString_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/1/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q434_NumberofSegmentsinaString_Test: SYBaseTestCase {

    var sut: Q434_NumberofSegmentsinaString?
    
    override func setUp() {
        super.setUp()
        sut = Q434_NumberofSegmentsinaString()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "Hello, my name is John", output: 5)
        case1.verify(with: "434", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "hello", output: 1)
        case2.verify(with: "434", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: "love live! mu'sic forever", output: 4)
        case3.verify(with: "434", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case4 = TestCase(input: "", output: 0)
        case4.verify(with: "434", desc: "check test case 4, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
