//
//  Q27-RemoveElement_Test.swift
//  LeetcodeTests
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q27_RemoveElement_Test: SYBaseTestCase {

    var sut: Q27_RemoveElement?
    
    override func setUp() {
        super.setUp()
        sut = Q27_RemoveElement()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ([3,2,2,3], 3), output: 2)
        case1.verify(with: "27", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ([0,1,2,2,3,0,4,2], 2), output: 5)
        case2.verify(with: "27", desc: "check test case 2, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
