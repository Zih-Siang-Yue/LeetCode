//
//  BinTest.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/4/12.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Binance_ShortestStr_Test: SYBaseTestCase {

    var sut: Bin?

    override func setUp() {
        super.setUp()
        sut = Bin()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "abcabcdabcde", output: "abc")
        case1.verify(with: "Bin", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
