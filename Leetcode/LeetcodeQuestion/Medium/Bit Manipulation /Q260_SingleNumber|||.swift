//
//  Q260_SingleNumber|||.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/26.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q260_SingleNumber:Executable {
    func execute() {
        let output = singleNumber([1,2,1,3,2,5])
        print("leetcode260 output: \(output)")
    }
    
    func singleNumber(_ nums: [Int]) -> [Int] {
        return solution(nums)
    }
    
    func solution(_ nums: [Int]) -> [Int] {
        if nums.isEmpty { return [] }
        var dict:[Int:Int] = [:]
        for n in nums {
            if dict[n] != nil {
                dict[n] = nil
                continue
            }
            dict[n] = 1
        }
        return Array(dict.keys)
    }
}
