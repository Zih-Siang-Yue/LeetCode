//
//  Q867-TransposeMatrix.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/8.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q867_TransposeMatrix: Executable {
    typealias I = [[Int]]
    typealias O = [[Int]]
    
    /* Instance
     [[1,2,3],[4,5,6]] -> mCount = 2, nCount = 3
    [[1,4],[2,5],[3,6]] -> 3, 2
    */
    
    // Runtime: 96 ms, faster than 93.75%
    func solution(_ input: [[Int]]) -> [[Int]] {
        var answer: [[Int]] = []
        for m in 0 ..< input[0].count {
            var innerAry: [Int] = []
            for n in 0 ..< input.count {
                innerAry.append(input[n][m])
            }
            answer.append(innerAry)
        }
        return answer
    }
}
