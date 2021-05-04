//
//  Q108-ConvertSortedArraytoBinarySearchTree.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q108_ConvertSortedArraytoBinarySearchTree: Executable {
    typealias I = [Int]
    typealias O = TreeNode?
    
    // Runtime: 16 ms, faster than 93.14%
    func solution(_ input: [Int]) -> TreeNode? {
        return arrayToBST(nums: input, left: 0, right: input.count-1)
    }
    
    func arrayToBST(nums: [Int], left: Int, right: Int) -> TreeNode? {
        if left > right { return nil }
        
        if left == right { return  TreeNode(nums[left]) }
        else {
            let mid = (left + right) / 2
            let node = TreeNode(nums[mid])
            node.left = arrayToBST(nums: nums, left: left, right: mid - 1)
            node.right = arrayToBST(nums: nums, left: mid + 1, right: right)
            return node
        }
    }
}
