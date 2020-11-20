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

    var testInst: Executable?
    
    override func setUp() {
        super.setUp()
        testInst = Q11_ContainerWithMostWater()
    }
    
    override func tearDown() {
        testInst = nil
    }

    func testExample() {
        //TODO:(Sean) should return output value
        testInst?.execute()
//        XCTAssertEqual(input, output, "")
       
        //  when the result is up to ur snuff
        
        // Create a promise which the type is XCTestExpectation, and set up the desc what you expect to happen.
        let promise: XCTestExpectation = expectation(description: "Status code: 200")
        
        // Call this in the success condition closure of the asynchronous method's completion handler to flag that the expectation has been met.
        promise.fulfill()
        
        // Keeps the test running until all expectations are fulfilled, or the timeout interval ends, whichever happens first.
        wait(for: [promise], timeout: 5)
    }

}

class UICustomControl: UIView {
    
}
