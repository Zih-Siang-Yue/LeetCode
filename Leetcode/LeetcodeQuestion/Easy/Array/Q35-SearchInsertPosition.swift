//
//  Q35-SearchInsertPosition.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q35_SearchInsertPosition: Executable {
    typealias I = ([Int], Int)
    typealias O = Int
    
    func solution(_ input: ([Int], Int)) -> Int {
        let nums = input.0
        let target = input.1

        for (i, v) in nums.enumerated() {
            if v >= target {
                return i
            }
        }
        return nums.count
    }
    
    func searchInsertSolution2(_ nums: [Int], _ target: Int) -> Int {
        for i in 0 ..< nums.count {
            if target <= nums[i] {
                return i
            }
            else if target > nums[i] && i == nums.count - 1 {
                return nums.count
            }
            else if target > nums[i] && target < nums[i+1] {
                return i + 1
            }
        }
        return nums.count
    }
}
