//
//  Q11-ContainerWithMostWater_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/11/16.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q11_ContainerWithMostWater_Test: XCTestCase {

    var sut: Executable?
    
    override func setUp() {
        super.setUp()
        sut = Q11_ContainerWithMostWater()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testExample() {
        let case1 = TestCase(input: [4,3,2,1,4], output: 16)
        case1.verify { (input) -> (Int) in
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: [1,8,6,2,5,4,8,3,7], output: 1)
        
    }

}
