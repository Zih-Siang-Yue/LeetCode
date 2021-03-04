//
//  Q119-PascalsTriangle2.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q119_PascalsTriangle2: Executable {
    typealias I = Int
    typealias O = [Int]
    
    //Runtime: 0 ms, faster than 100.00%
    func solution(_ input: Int) -> [Int] {
        let index = input
        if index == 0 { return [1] }
        
        var ary: [[Int]] = []
        for m in 0..<index+1 {
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
        return ary[index]
    }
}
