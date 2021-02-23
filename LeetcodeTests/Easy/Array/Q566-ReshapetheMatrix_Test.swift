//
//  Q566-ReshapetheMatrix_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/2/23.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q566_ReshapetheMatrix_Test: SYBaseTestCase {

    var sut: Q566_ReshapetheMatrix?
    
    override func setUp() {
        super.setUp()
        sut = Q566_ReshapetheMatrix()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([[1,2],[3,4]], 1, 4), output: [[1,2,3,4]])
        case1.verify(with: "566", desc: "check test case 1, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ([[1,2],[3,4]], 2, 4), output: [[1,2],[3,4]])
        case2.verify(with: "566", desc: "check test case 2, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
