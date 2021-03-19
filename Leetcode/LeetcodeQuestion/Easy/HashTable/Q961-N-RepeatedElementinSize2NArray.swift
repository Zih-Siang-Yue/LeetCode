//
//  Q961-N-RepeatedElementinSize2NArray.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/16.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q961_N_RepeatedElementinSize2NArray: Executable {
    typealias I = [Int]
    typealias O = Int
    
    // Runtime: 280 ms, faster than 47.17%
    func solution(_ input: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        for val in input {
            dict[val] = (dict[val] ?? 0) + 1
        }
        return dict.first(where: {$1 == input.count / 2})!.key
    }
    
    // Runtime: 224 ms, faster than 96.23%
    func thefastestSolution(_ input: [Int]) -> Int {
        var list: [Int] = []
        for a in input {
            if list.contains(a) {
                return a
            }
                
            list.append(a)
        }
        return input[0]
    }
}
