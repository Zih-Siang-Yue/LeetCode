//
//  Q804-UniqueMorseCodeWords_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/10.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q804_UniqueMorseCodeWords_Test: SYBaseTestCase {

    var sut: Q804_UniqueMorseCodeWords?
    
    override func setUp() {
        super.setUp()
        sut = Q804_UniqueMorseCodeWords()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ["gin", "zen", "gig", "msg"], output: 2)
        case1.verify(with: "804", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
