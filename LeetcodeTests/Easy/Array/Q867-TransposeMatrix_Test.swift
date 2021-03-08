//
//  Q867-TransposeMatrix_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/8.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q867_TransposeMatrix_Test: SYBaseTestCase {

    var sut: Q867_TransposeMatrix?
    
    override func setUp() {
        super.setUp()
        sut = Q867_TransposeMatrix()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [[1,2,3],[4,5,6],[7,8,9]], output: [[1,4,7],[2,5,8],[3,6,9]])
        case1.verify(with: "867", desc: "check test case 1, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [[1,2,3],[4,5,6]], output: [[1,4],[2,5],[3,6]])
        case2.verify(with: "867", desc: "check test case 2, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
  
}
