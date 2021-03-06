//
//  Q16-3SumClosest.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q16_3SumClosest: Executable {
    
    typealias I = ([Int], Int)
    typealias O = Int
        
    func solution(_ input: ([Int], Int)) -> Int {
        return solution1(input.0, input.1)
    }
    
    private func solution1(_ nums: [Int], _ target: Int) -> Int {
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
