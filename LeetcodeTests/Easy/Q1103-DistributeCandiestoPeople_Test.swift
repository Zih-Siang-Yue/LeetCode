//
//  Q1103-DistributeCandiestoPeople_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/22.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q1103_DistributeCandiestoPeople_Test: SYBaseTestCase {

    var sut: Q1103_DistributeCandiestoPeople?
    
    override func setUp() {
        super.setUp()
        sut = Q1103_DistributeCandiestoPeople()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: (7,4), output: [1,2,3,1])
        case1.verify(with: "1103", desc: "check test case 1, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: (10,3), output: [5,2,3])
        case2.verify(with: "1103", desc: "check test case 2, plz.") { [weak self] input -> ([Int]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
