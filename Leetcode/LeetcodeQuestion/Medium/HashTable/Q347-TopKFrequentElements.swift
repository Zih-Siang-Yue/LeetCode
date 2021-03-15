//
//  Q347-TopKFrequentElements.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/15.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q347_TopKFrequentElements: Executable {
    typealias I = ([Int], Int)
    typealias O = [Int]
    
    // Runtime: 304 ms, faster than 5.59%
    func solution(_ input: ([Int], Int)) -> [Int] {
        let nums = input.0
        let k = input.1

        var dict: [Int: Int] = [:]
        for num in nums {
            if dict[num] != nil {
                dict[num] = dict[num]! + 1
                continue
            }
            dict[num] = 1
        }

        var answer: [Int] = []
        while answer.count < k {
            let maxVal = dict.values.max()
            if let key = dict.first(where: {$1 == maxVal})?.key {
                answer.append(key)
                dict.removeValue(forKey: key)
            }
        }
        return answer
    }
    
    // Runtime: 100 ms, faster than 76.40%
    func thefastestSolution(_ input: ([Int], Int)) -> [Int] {
        let nums = input.0
        let k = input.1
        
        var dict: [Int: Int] = [:]
        var count = 0
        var answer: [Int] = []
        for num in nums {
            dict[num] = (dict[num] ?? 0) + 1
        }

        for (key, _) in Array(dict).sorted(by: {$0.1 > $1.1}) {
            if count < k {
                answer.append(key)
                count += 1
            }
        }
        return answer
    }
    
    // Runtime: 104 ms, faster than 50.40%
    func reverseDictAndAppendToArySolution(_ input: ([Int], Int)) -> [Int] {
        let nums = input.0
        let k = input.1

        var dic = [Int: Int]()
        for num in nums {
            dic[num, default: 0] += 1
        }
        
        var arr = [(Int, Int)]()
        for (k,v) in dic {
            arr.append((k,v))
        }
        
        arr.sort {
            return $0.1 > $1.1
        }
        
        var result = [Int]()
        for i in 0..<k {
            result.append(arr[i].0)
        }
        
        return result
    }
}
