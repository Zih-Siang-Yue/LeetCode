//
//  Q1002-FindCommonCharacters_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/18.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q1002_FindCommonCharacters_Test: SYBaseTestCase {

    var sut: Q1002_FindCommonCharacters?
    
    override func setUp() {
        super.setUp()
        sut = Q1002_FindCommonCharacters()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ["bella","label","roller"], output: ["e","l","l"])
        case1.verify(with: "1002", desc: "check test case 1, plz.") { [weak self] input -> ([String]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ["cool","lock","cook"], output: ["c","o"])
        case2.verify(with: "1002", desc: "check test case 2, plz.") { [weak self] input -> ([String]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
