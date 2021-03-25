//
//  Q1694-ReformatPhoneNumber_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/25.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q1694_ReformatPhoneNumber_Test: SYBaseTestCase {

    var sut: Q1694_ReformatPhoneNumber?
    
    override func setUp() {
        super.setUp()
        sut = Q1694_ReformatPhoneNumber()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "1-23-45 6", output: "123-456")
        case1.verify(with: "1694", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "00-44  48 5555 8361", output: "004-448-555-583-61")
        case2.verify(with: "1694", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: "0 - 22 1985--324", output: "022-198-53-24")
        case3.verify(with: "1694", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
