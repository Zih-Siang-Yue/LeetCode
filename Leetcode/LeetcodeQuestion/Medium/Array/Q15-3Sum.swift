//
//  Q15-3Sum.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q15_3Sum: Executable {
    func execute() {
        let output:[[Int]] = threeSum([-2,0,1,1,2])
        print("leetcode15 output: \(output)")
    }
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        return solution(nums)
    }
    
    private func solution(_ nums: [Int]) -> [[Int]] {
        /**
        Runtime: 292 ms, faster than 67.58%, Memory Usage: 18.6 MB, less than 29.86%
        */
        if nums.isEmpty { return [] }
        
        let sortedNums = nums.sorted()
        var answer:[String:[Int]] = [:]
        
        let length = sortedNums.count
        for i in 0 ..< length {
            var low  = i + 1
            var high = length - 1
            while low < high {
                let sum = sortedNums[i] + sortedNums[low] + sortedNums[high]
                if sum > 0 {
                    high -= 1
                }
                else if sum < 0 {
                    low += 1
                }
                else {
                    let key = "\(sortedNums[i])\(sortedNums[low])\(sortedNums[high])"
                    answer[key] = [sortedNums[i], sortedNums[low], sortedNums[high]]
                    
                    low += 1
                    while low < high, sortedNums[low] == sortedNums[low-1] {
                        low += 1
                    }
                }
            }
        }
        return Array(answer.values)
    }
    
}