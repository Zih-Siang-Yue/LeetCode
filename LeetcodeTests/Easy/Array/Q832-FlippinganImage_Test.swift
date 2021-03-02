//
//  Q832-FlippinganImage_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/3/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q832_FlippinganImage_Test: SYBaseTestCase {

    var sut: Q832_FlippinganImage?
    
    override func setUp() {
        super.setUp()
        sut = Q832_FlippinganImage()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: [[1,1,0],[1,0,1],[0,0,0]], output: [[1,0,0],[0,1,0],[1,1,1]])
        case1.verify(with: "832", desc: "check test case 1, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]], output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]])
        case2.verify(with: "832", desc: "check test case 2, plz.") { [weak self] input -> ([[Int]]) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }

}
