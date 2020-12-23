//
//  Q557_ReverseWordsinaString3_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q557_ReverseWordsinaString3_Test: SYBaseTestCase {

    var sut: Q557_ReverseWordsinaString3?
    
    override func setUp() {
        super.setUp()
        sut = Q557_ReverseWordsinaString3()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("Let's take LeetCode contest"), output: "s'teL ekat edoCteeL tsetnoc")
        case1.verify(with: "557", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("It's going down for real"), output: "s'tI gniog nwod rof laer")
        case2.verify(with: "557", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: ("Don't settle for ordinary when you can be extraordinary"), output: "t'noD elttes rof yranidro nehw uoy nac eb yranidroartxe")
        case3.verify(with: "557", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
