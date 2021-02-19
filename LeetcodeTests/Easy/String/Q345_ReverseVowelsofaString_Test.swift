//
//  Q345_ReverseVowelsofaString_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/31.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q345_ReverseVowelsofaString_Test: SYBaseTestCase {

    var sut: Q345_ReverseVowelsofaString?
    
    override func setUp() {
        super.setUp()
        sut = Q345_ReverseVowelsofaString()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: "race car", output: "race car")
        case1.verify(with: "345", desc: "check test case 1, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: "hello", output: "holle")
        case2.verify(with: "345", desc: "check test case 2, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case3 = TestCase(input: "leetcode", output: "leotcede")
        case3.verify(with: "345", desc: "check test case 3, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case4 = TestCase(input: "Aa", output: "aA")
        case4.verify(with: "345", desc: "check test case 4, plz.") { [weak self] input -> (String) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

    }

}
