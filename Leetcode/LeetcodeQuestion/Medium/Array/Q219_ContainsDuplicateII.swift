//
//  Q219_ContainsDuplicateII.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/10/24.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q219_ContainsDuplicateII:Executable {
    func execute() {
        let output = containsNearbyDuplicate([1,2,3,1], 3)
        print("leetcode219 output: \(output)")
    }
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        return solution(nums, k)
    }
    
    //Runtime: 100 ms, faster than 95.08%, Memory Usage: 18.3 MB, less than 49.18%
    func solution(_ nums: [Int], _ k: Int) -> Bool {
        var dict:[Int:Int] = [:]
        for i in 0 ..< nums.count {
            let v = nums[i]
            if let preIndex = dict[v] {
                if i - preIndex <= k { return true }
                dict[v] = i
                continue
            }
            dict[v] = i
        }
        return false
    }

    //Runtime: 112 ms, faster than 50.82%, Memory Usage: 18.2 MB, less than 49.18%
    //用了enumerated() 反而比上面直接取用index 還要慢12ms
    func solution1(_ nums: [Int], _ k: Int) -> Bool {
        var dict:[Int:Int] = [:]
        for (i,v) in nums.enumerated() {
            if let preIndex = dict[v] {
                if i - preIndex <= k { return true }
                dict[v] = i
                continue
            }
            dict[v] = i
        }
        return false
    }
    
    // Runtime: 116 ms, Memory Usage: 20 MB
    func solution2(_ nums: [Int], _ k: Int) -> Bool {
        var dict:[Int:[Int]] = [:]
        for (i,v) in nums.enumerated() {
            if var ary = dict[v] {
                ary.append(i)
                dict[v] = ary
                continue
            }
            dict[v] = [i]
        }
        
        for indices in dict.values {
            for index in 0 ..< indices.count - 1 {
                if k >= indices[index + 1] - indices[index] { return true }
            }
        }
        return false
    }
}
