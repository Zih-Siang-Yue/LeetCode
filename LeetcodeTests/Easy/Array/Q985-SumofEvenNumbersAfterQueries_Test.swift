//
//  Q985-SumofEvenNumbersAfterQueries_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/11.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q985_SumofEvenNumbersAfterQueries_Test: SYBaseTestCase {

    var sut: Q985_SumofEvenNumbersAfterQueries?
    
    override func setUp() {
        super.setUp()
        sut = Q985_SumofEvenNumbersAfterQueries()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([1,2,3,4], [[1,0],[-3,1],[-4,0],[2,3]]), output: [8,6,2,4])
        case1.verify(with: "985", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
  
}
