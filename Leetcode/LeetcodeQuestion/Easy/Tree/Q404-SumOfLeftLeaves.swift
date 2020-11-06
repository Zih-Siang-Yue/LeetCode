//
//  Q404-SumOfLeftLeaves.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/11/2.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q404_SumOfLeftLeaves: Executable {
    func execute() {
        let leftNode = TreeNode(9)
        let rightNode = TreeNode(20, TreeNode(15), TreeNode(7))
        let root = TreeNode(3, leftNode, rightNode)
        
        let output = sumOfLeftLeaves(root)
        print("leetcode404 Sum of Left Leaves output: \(output)")
    }
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        return solution(root)
        return solution1(root, isLeft: false)
    }
    
    // 8ms, faster than 100.00%
    func solution(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var sum = 0
        if let left = root.left {
            if left.right != nil || left.left != nil {
                sum += sumOfLeftLeaves(left)
            } else {
                sum += left.val
            }
        }
        
        sum += sumOfLeftLeaves(root.right)
        
        return sum
    }
    
    // 12ms
    func solution1(_ root: TreeNode?, isLeft: Bool) -> Int {
        guard let root = root else { return 0 }
        if root.left == nil, root.right == nil, isLeft {    //如果下階左右都為nil, 但是是從left來的 則回傳val
            return root.val
        }
        return solution1(root.left, isLeft: true) + solution1(root.right, isLeft: false)
    }
        
}
