//
//  Q917_ReverseOnlyLetters_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/29.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q917_ReverseOnlyLetters_Test: SYBaseTestCase {
    
    var sut: Q917_ReverseOnlyLetters?
    
    override func setUp() {
        super.setUp()
        sut = Q917_ReverseOnlyLetters()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("ab-cd"), output: "dc-ba")
        case1.verify(with: "917", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("a-bC-dEf-ghIj"), output: "j-Ih-gfE-dCba")
        case2.verify(with: "917", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: ("Test1ng-Leet=code-Q!"), output: "Qedo1ct-eeLg=ntse-T!")
        case3.verify(with: "917", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
