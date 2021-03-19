//
//  Q1365-HowManyNumbersAreSmallerThantheCurrentNumber.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/18.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q1365_HowManyNumbersAreSmallerThantheCurrentNumber: Executable {
    typealias I = [Int]
    typealias O = [Int]
    
    // Runtime: 40 ms, faster than 94.51%
    func solution(_ input: [Int]) -> [Int] {
        var dict: [Int: Int] = [:]
        for val in input {
            dict[val, default: 0] += 1
        }
        let sortedAry = Array(dict).sorted(by: {$0.0 < $1.0})
        
        var total = 0
        for item in sortedAry {
            dict[item.key] = total
            total += item.value
        }
        
        var answer: [Int] = []
        for val in input {
            answer.append(dict[val]!)
        }
        
        return answer
    }
    
    // Runtime: 24 ms,
    func thefastestSolution(_ input: [Int]) -> [Int] {
        var ht = Array(repeating: 0, count:101)
        var ans = [Int]()
        for num in input {
            ht[num] += 1
        }
        for i in 1..<ht.count {
            ht[i] += ht[i-1]
        }
        for num in input {
            if num == 0 {
                ans.append(0)
            }
            else {
                ans.append(ht[num-1])
            }
        }
        return ans
    }
    
}
