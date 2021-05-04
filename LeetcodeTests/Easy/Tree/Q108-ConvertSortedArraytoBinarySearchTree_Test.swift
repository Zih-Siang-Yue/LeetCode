//
//  Q108-ConvertSortedArraytoBinarySearchTree_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q108_ConvertSortedArraytoBinarySearchTree_Test: SYBaseTestCase {

    var sut: Q108_ConvertSortedArraytoBinarySearchTree?
    
    override func setUp() {
        super.setUp()
        sut = Q108_ConvertSortedArraytoBinarySearchTree()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let root: TreeNode? = TreeNode(0)
        let node2 = TreeNode(-3)
        let node3 = TreeNode(-10)
        let node4 = TreeNode(9)
        let node5 = TreeNode(5)
        
        node2.left = node3
        node4.left = node5
        root?.left = node2
        root?.right = node4
        
        let case1 = TestCase(input: [-10,-3,0,5,9], output: root)
        case1.verify(with: "108", desc: "check test case 1, plz.") { [weak self] input -> (TreeNode?) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
