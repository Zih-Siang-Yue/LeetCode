//
//  Q929-UniqueEmailAddresses_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/2/22.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q929_UniqueEmailAddresses_Test: SYBaseTestCase {
    
    var sut: Q929_UniqueEmailAddresses?
    
    override func setUp() {
        super.setUp()
        sut = Q929_UniqueEmailAddresses()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"], output: 2)
        case1.verify(with: "929", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ["test.email+alex@leetcode.com", "test.email@leetcode.com"], output: 1)
        case2.verify(with: "929", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: ["test.email+alex@leetcode.com","test.email.leet+alex@code.com"], output: 2)
        case3.verify(with: "929", desc: "check test case 3, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
