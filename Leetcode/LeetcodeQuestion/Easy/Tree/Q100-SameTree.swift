//
//  Q100-SameTree.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/20.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q100_SameTree: Executable {
    typealias I = (TreeNode?, TreeNode?)
    typealias O = Bool
    
    func solution(_ input: (TreeNode?, TreeNode?)) -> Bool {
        let p = input.0
        let q = input.1
        
        if p == nil && q == nil { return true }
        if p?.val != q?.val { return false }
        return solution((p?.left, q?.left)) && solution((p?.right, q?.right))
    }
}
