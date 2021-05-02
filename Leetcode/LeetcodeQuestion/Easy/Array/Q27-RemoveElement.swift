//
//  Q27-RemoveElement.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q27_RemoveElement: Executable {
    typealias I = ([Int], Int)
    typealias O = Int
    
    func solution(_ input: ([Int], Int)) -> Int {
        var nums = input.0
        let val = input.1
        
        var ary = [Int]()
        for value in nums {
            if value != val {
                ary.append(value)
            }
        }
        nums = ary
        return nums.count
    }
    
    func simpleSolution(_ nums: [Int], val: Int) -> Int {
        var nums = nums
        var i = 0
        for j in nums.indices {
            if nums[j] != val {
                nums[i] = nums[j]
                i += 1
            }
        }
        return nums.count
    }
}
