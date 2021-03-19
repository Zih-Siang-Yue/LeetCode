//
//  Q1365-HowManyNumbersAreSmallerThantheCurrentNumber_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/18.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q1365_HowManyNumbersAreSmallerThantheCurrentNumber_Test: SYBaseTestCase {

    var sut: Q1365_HowManyNumbersAreSmallerThantheCurrentNumber?
    
    override func setUp() {
        super.setUp()
        sut = Q1365_HowManyNumbersAreSmallerThantheCurrentNumber()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [8,1,2,2,3], output: [4,0,1,1,3])
        case1.verify(with: "1365", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [6,5,4,8], output: [2,1,0,3])
        case2.verify(with: "1365", desc: "check test case 2, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: [7,7,7,7], output: [0,0,0,0])
        case3.verify(with: "1365", desc: "check test case 3, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
