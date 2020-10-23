//
//  Q16-3SumClosest.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q16_3SumClosest:Executable {
    func execute() {
        let output:Int = threeSumClosest([1, 1, 1 ,1], -100)
        print("leetcode16 output: \(output)")
    }
    
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        return threeSumClosestSolution1(nums, target)
    }
    
    private func threeSumClosestSolution1(_ nums: [Int], _ target: Int) -> Int {
        var threeSum:Int? = nil
        let length = nums.count
        
        for i in 0 ..< length {
            for j in i + 1 ..< length   {
                for k in j + 1 ..< length {
                    let sum = nums[i] + nums[j] + nums[k]
                    let interval = sum - target
                    if interval == 0 { return sum }
                    if threeSum == nil {
                        threeSum = sum
                        continue
                    }
                    threeSum = abs(threeSum! - target) < abs(interval) ? threeSum : sum
                }
            }
        }
        return threeSum!
    }
}
