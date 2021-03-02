//
//  Q832-FlippinganImage.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q832_FlippinganImage: Executable {
    typealias I = [[Int]]
    typealias O = [[Int]]
    
    // Runtime: 28 ms, faster than 63.93%
    func solution(_ input: [[Int]]) -> [[Int]] {
        let dict: [Int: Int] = [1:0, 0:1]
        
        var outsideAry: [[Int]] = []
        for ary in input {
            var innerAry: [Int] = []
            for i in stride(from: ary.count - 1 , to: -1, by: -1) {
                let key = ary[i]
                innerAry.append(dict[key]!)
            }
            outsideAry.append(innerAry)
        }
        return outsideAry
    }
    
    func theFastestSolution(_ input: [[Int]]) -> [[Int]] {
        let m = input.count
        let n = input[0].count
        var res = Array(repeating: Array(repeating: 0, count: n), count: m)
        
        for i in 0..<m{
            for j in 0..<n{
                res[i][j] = input[i][n - 1 - j] == 0 ? 1 : 0
            }
        }
        return res
    }
}
