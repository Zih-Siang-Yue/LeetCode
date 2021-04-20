//
//  Q100-SameTree_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/4/20.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q100_SameTree_Test: SYBaseTestCase {
    var sut: Q100_SameTree?
    
    override func setUp() {
        super.setUp()
        sut = Q100_SameTree()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let tree = TreeNode(2, TreeNode(3), TreeNode(4))
        let vTree = TreeNode(2, TreeNode(3), TreeNode(4))
        
        let case1 = TestCase(input: (tree, vTree), output: true)
        case1.verify(with: "100", desc: "check test case 1, plz.") { [weak self] input -> (Bool) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
       
    }
}
