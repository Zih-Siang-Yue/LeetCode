//
//  Q78-Subsets.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/28.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q78_Subsets: Executable {
    typealias I = [Int]
    typealias O = [[Int]]
    
    //Runtime: 8 ms, faster than 80.74% (使用兩層forEach 還比較慢)
    func solution(_ input: [Int]) -> [[Int]] {
        var answer:[[Int]] = []
        if input.isEmpty { return answer }
        
        answer.append([])
        for val in input {
            for curr in answer {
                print("[xx]curr: \(curr), [val]: \([val])")
                answer.append(curr + [val])
                print("[xx]answer: \(answer)")
            }
        }
        return answer
    }
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]()]
        subset(&res, nums)
        return res
    }

    private func subset(_ res: inout [[Int]], _ nums: [Int]) {
        guard let n = nums.first else { return }
        res += res.map { $0 + [n] }
        subset(&res, Array(nums[1..<nums.count]))
    }
}
