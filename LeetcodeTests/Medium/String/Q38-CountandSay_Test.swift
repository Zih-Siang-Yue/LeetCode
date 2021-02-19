//
//  Q38-CountandSay_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/2/19.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q38_CountandSay_Test: SYBaseTestCase {

    var sut: Q38_CountandSay?
    
    override func setUp() {
        super.setUp()
        sut = Q38_CountandSay()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: 1, output: "1")
        case1.verify(with: "38", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: 3, output: "21")
        case2.verify(with: "38", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: 4, output: "1211")
        case3.verify(with: "38", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
