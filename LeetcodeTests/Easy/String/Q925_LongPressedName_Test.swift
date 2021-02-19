//
//  Q925_LongPressedName_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/30.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q925_LongPressedName_Test: SYBaseTestCase {

    var sut: Q925_LongPressedName?
    
    override func setUp() {
        super.setUp()
        sut = Q925_LongPressedName()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("alex", "aaleex"), output: true)
        case1.verify(with: "925", desc: "check test case 1, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("saeed", "ssaaedd"), output: false)
        case2.verify(with: "925", desc: "check test case 2, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: ("leelee", "lleeelee"), output: true)
        case3.verify(with: "925", desc: "check test case 3, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case4 = TestCase(input: ("xnhtq", "xhhttqq"), output: false)
        case4.verify(with: "925", desc: "check test case 4, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

    }

}
