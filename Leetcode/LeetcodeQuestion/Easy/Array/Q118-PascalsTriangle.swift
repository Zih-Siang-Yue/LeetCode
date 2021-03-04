//
//  Q118-PascalsTriangle.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q118_PascalsTriangle: Executable {
    typealias I = Int
    typealias O = [[Int]]
    
    // Runtime: 0 ms, faster than 100.00% 
    func solution(_ input: Int) -> [[Int]] {
        if input == 1 { return [[1]] }
        
        var ary: [[Int]] = []
        for m in 0..<input {
            var innerAry: [Int] = []
            for n in 0...m {
                if n == m || n == 0 {
                    innerAry.append(1)
                    continue
                }
                let num = ary[m-1][n-1] + ary[m-1][n]
                innerAry.append(num)
            }
            ary.append(innerAry)
        }
        return ary
    }
}
