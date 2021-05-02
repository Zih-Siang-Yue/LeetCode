//
//  Q26-RemoveDuplicatesfromSortedArray.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q26_RemoveDuplicatesfromSortedArray: Executable {
    typealias I = [Int]
    typealias O = Int
    
    func solution(_ input: [Int]) -> Int {
        var nums = input
        if nums.count == 0 { return 0 }
        
        var j = 0
        for i in 1..<nums.count {
            if nums[j] != nums[i] {
                j += 1
                nums[j] = nums[i]
            }
        }
        nums = Array(nums[...j])
        return nums.count
    }
}
