//
//  KKDay_3_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/24.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class KKDay_3_Test: SYBaseTestCase {

    var sut: KKDay_3?
    
    override func setUp() {
        super.setUp()
        sut = KKDay_3()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([1, 2, 5, 9, 9], 5), output: 2)
        case1.verify(with: "KKDay_3.1", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
