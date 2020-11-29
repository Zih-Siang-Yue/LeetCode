//
//  Q414-ThirdMaximumNumber.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/16.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q414_ThirdMaximumNumber: Executable {
    func execute() {
        let output = thirdMax([2,2,3,1])
        print("leetcode414 Q414_Third Maximum Number output: \(output)")
    }
    
    func thirdMax(_ nums: [Int]) -> Int {
        return solution1([2,2,3,1])
    }
    
    //Runtime: 64 ms, faster than 7.69%, Memory Usage: 14.4 MB, less than 59.83%
    func solution(_ nums: [Int]) -> Int {
        guard Set(nums).count >= 3 else { return nums.max()! }
        var nums = Set(nums).sorted()
        return nums[nums.count - 3]
    }
    
    //Runtime: 24 ms
    func solution1(_ nums: [Int]) -> Int {
        var max3 = Int.min
        var max1 = Int.min
        var max2 = Int.min
        let n = nums.count
        
        for i in 0..<n {
            if nums[i] > max1 {
                max3 = max2
                max2 = max1
                max1 = nums[i]
            } else if nums[i] > max2 && nums[i] < max1 {
                max3 = max2
                max2 = nums[i]
            } else if nums[i] > max3 && nums[i] < max2 {
                max3 = nums[i]
            }
        }
        
        if max3 == Int.min {
            return max1
        }
        return max3
    }
}
