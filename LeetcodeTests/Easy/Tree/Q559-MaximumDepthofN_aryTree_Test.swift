//
//  Q559-MaximumDepthofN_aryTree_Test.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import XCTest
@testable import Leetcode

class Q559_MaximumDepthofN_aryTree_Test: SYBaseTestCase {

    var sut: Q559_MaximumDepthofN_aryTree?
    
    override func setUp() {
        super.setUp()
        sut = Q559_MaximumDepthofN_aryTree()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    override func testProblem() {
        let root = Node(1)
        let node2 = Node(2)
        let node3 = Node(3)
        let node4 = Node(4)
        let node5 = Node(5)
        let node6 = Node(6)
        node3.children = [node5, node6]
        root.children = [node2, node3, node4]
        
        let case1 = TestCase(input: root, output: 3)
        case1.verify(with: "559", desc: "check test case 1, plz.") { [weak self] input -> (Int) in
            guard let self = self, let sut = self.sut else { assert(false, "unwrapped failed") }
            return sut.solution(input)
        }
    }
}
