//
//  KKDay_2_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/24.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class KKDay_2_Test: SYBaseTestCase {

    var sut: KKDay_2?

    override func setUp() {
        super.setUp()
        sut = KKDay_2()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: 0, output: 1)   //1
        case1.verify(with: "KKDay_2.1", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case2 = TestCase(input: 1, output: 2)   //11
        case2.verify(with: "KKDay_2.2", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: 2, output: 2)   //121
        case3.verify(with: "KKDay_2.3", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: 8, output: 2)   //214,358,881
        case4.verify(with: "KKDay_2.4", desc: "check test case 4, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case5 = TestCase(input: 14, output: 1)   //379,749,833,583,241
        case5.verify(with: "KKDay_2.5", desc: "check test case 5, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case6 = TestCase(input: 15, output: 4)   //4,177,248,169,415,651
        case6.verify(with: "KKDay_2.5", desc: "check test case 5, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    
    }

}
