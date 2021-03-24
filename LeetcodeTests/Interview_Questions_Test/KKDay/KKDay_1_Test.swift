//
//  KKDay_1_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/24.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class KKDay_1_Test: SYBaseTestCase {

    var sut: KKDay_1?
    
    override func setUp() {
        super.setUp()
        sut = KKDay_1()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "00-44  48 5555 8361", output: "004-448-555-583-61")
        case1.verify(with: "KKDay_1.1", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "0 - 22 1985--324", output: "022-198-53-24")
        case2.verify(with: "KKDay_1.2", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
