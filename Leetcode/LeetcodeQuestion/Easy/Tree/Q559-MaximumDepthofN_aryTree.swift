//
//  Q559-MaximumDepthofN_aryTree.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q559_MaximumDepthofN_aryTree: Executable {
    typealias I = Node?
    typealias O = Int
    
    func solution(_ input: Node?) -> Int {
        guard let root = input else{
            return 0
        }
        
        return dfs(root, 1)
    }
    
    private func dfs(_ root: Node, _ depth: Int) -> Int {
        var maxDepth = depth
        for child in root.children{
            maxDepth = max(dfs(child, depth+1), maxDepth)
        }
        return maxDepth
    }
    
    func maxDepth(_ root: Node?) -> Int {
        var depth = 0
        if root == nil {
            return depth
        }
        var stack = [Node]()
        stack.append(root!)
        while !stack.isEmpty {
            depth += 1
            var nodes = [Node]()
            for val in stack {
                nodes.append(contentsOf: val.children)
            }
            stack = nodes
        }
        return depth
    }
}
