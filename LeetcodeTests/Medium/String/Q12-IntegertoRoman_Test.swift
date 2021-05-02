//
//  Q12-IntegertoRoman_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q12_IntegertoRoman_Test: SYBaseTestCase {

    var sut: Q12_IntegertoRoman?
    
    override func setUp() {
        super.setUp()
        sut = Q12_IntegertoRoman()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: 3, output: "III")
        case1.verify(with: "12", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: 4, output: "IV")
        case2.verify(with: "12", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: 58, output: "LVIII")
        case3.verify(with: "12", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: 1994, output: "MCMXCIV")
        case4.verify(with: "12", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
