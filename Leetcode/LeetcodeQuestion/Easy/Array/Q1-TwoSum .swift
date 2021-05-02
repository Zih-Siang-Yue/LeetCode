//
//  Q1-TwoSum .swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q1_TwoSum: Executable {
    typealias I = ([Int], Int)
    typealias O = [Int]
    
    func solution(_ input: ([Int], Int)) -> [Int] {
        let nums = input.0
        let target = input.1
        
        var dic:[Int:Int] = [Int:Int]()
        for i in 0 ..< nums.count {
            let key:Int = target - nums[i]
            if dic[key] != nil {
                return [dic[key]!, i]
            }
            else {
                dic[nums[i]] = i
            }
        }
        return [0]
    }
}
