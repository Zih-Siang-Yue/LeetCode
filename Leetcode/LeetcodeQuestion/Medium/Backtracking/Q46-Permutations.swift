//
//  Q46-Permutations.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/1.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q46_Permutations: Executable {
    func execute() {
        let output = permute([1,2,3])
        print("leetcode Q46 output: \(output)")
    }
    
    func permute(_ nums: [Int]) -> [[Int]] {
        return solution(nums)
    }
    
    func solution(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty { return [] }
        if nums.count == 1 { return [nums] }
        
        var nums = nums
        var result:[[Int]] = []
        permuteRecursive(&nums, 0, &result)
        return result
    }
    
    func permuteRecursive(_ nums: inout [Int], _ begin: Int, _ result: inout [[Int]] ) {
        if begin >= nums.count {
            result.append(nums)
            return
        }
        
        for i in begin..<nums.count {
            nums.swapAt(begin, i)
            permuteRecursive(&nums, begin+1, &result)
            nums.swapAt(begin, i)
        }
    }
}
