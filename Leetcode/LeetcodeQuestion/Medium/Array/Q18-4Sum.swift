//
//  Q18-4Sum.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/10/24.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q18_4Sum: Executable {
    
    typealias I = ([Int], Int)
    typealias O = [[Int]]
        
    func solution(_ input: ([Int], Int)) -> [[Int]] {
        return solution1(input.0, input.1)
    }
    
    func solution1(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.isEmpty { return [] }
        
        let sorted = nums.sorted()
        var answer:[String:[Int]] = [:]
        let length = nums.count
        
        for i in 0 ..< length {
            for j in i + 1 ..< length {
                var low = j + 1
                var high = length - 1
                
                while low < high {
                    let sum = sorted[i] + sorted[j] + sorted[low] + sorted[high]
                    if sum > target {
                        high -= 1
                    }
                    else if sum < target {
                        low += 1
                    }
                    else {
                        let key = "\(sorted[i])\(sorted[j])\(sorted[low])\(sorted[high])"
                        answer[key] = [sorted[i], sorted[j], sorted[low], sorted[high]]
                        low += 1
                        while low < high, sorted[low] == sorted[low - 1] {
                            low += 1
                        }
                    }
                }
            }
        }
        return Array(answer.values)
    }
    
    func timeoutSolution(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count == 0 { return [] }
        let sortedNums = nums.sorted()
        var dict:[[Int]:Int] = [:]
        let length = sortedNums.count
        for i in 0 ..< length {
            for j in i + 1 ..< length {
                for k in j + 1 ..< length {
                    for l in k + 1 ..< length {
                        let ary = [sortedNums[i], sortedNums[j], sortedNums[k], sortedNums[l]]
                        let fourSum = ary.reduce(0, +)
                        if fourSum == target && dict[ary] == nil {
                            dict[ary] = 1
                        }
                    }
                }
            }
        }
        
        var answer:[[Int]] = []
        for i in dict.keys {
            answer.append(i)
        }
        return answer
    }
}
