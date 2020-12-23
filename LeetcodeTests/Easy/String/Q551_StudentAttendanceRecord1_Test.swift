//
//  Q551_StudentAttendanceRecord1_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q551_StudentAttendanceRecord1_Test: SYBaseTestCase {

    var sut: Q551_StudentAttendanceRecord1?
    
    override func setUp() {
        super.setUp()
        sut = Q551_StudentAttendanceRecord1()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let case1 = TestCase(input: ("PPALLL"), output: false)
        case1.verify(with: "551", desc: "check test case 1, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case2 = TestCase(input: ("PPALLP"), output: true)
        case2.verify(with: "551", desc: "check test case 2, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case3 = TestCase(input: ("PALL"), output: true)
        case3.verify(with: "551", desc: "check test case 3, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
        
        let case4 = TestCase(input: ("PPAP"), output: true)
        case4.verify(with: "551", desc: "check test case 4, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
    
}
