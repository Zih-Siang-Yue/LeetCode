//
//  Q11-ContainerWithMostWater_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/11/16.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q11_ContainerWithMostWater_Test: SYBaseTestCase {

//    var sut: Executable?    //Original
    var sut: Q11_ContainerWithMostWater?
    
    override func setUp() {
        super.setUp()
        sut = Q11_ContainerWithMostWater()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    override func testProblem() {
        let case1 = TestCase(input: [4,3,2,1,4], output: 16)
        case1.verify(with: "11", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }

        let case2 = TestCase(input: [1,8,6,2,5,4,8,3,7], output: 49)
        case2.verify(with: "11", desc: "check test case 2, plz.") { [weak self] (input) -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: [1,1], output: 49)  // expectation value: 1
        case3.verify(with: "11", desc: "check test case 3, plz.") { [weak self] (input) -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
