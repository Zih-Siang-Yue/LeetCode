//
//  Q409-LongestPalindrome.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/19.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q409_LongestPalindrome: Executable {
    typealias I = String
    typealias O = Int
    
    // Runtime: 12 ms, faster than 82.35%
    func solution(_ input: String) -> Int {
        if input.count == 1 { return 1 }
        var dict: [Character: Int] = [:]
        var len = 0
        for char in input {
            if dict[char] != nil {
                len += 2
                dict[char] = nil
                continue
            }
            dict[char] = 1
        }
        if dict.keys.count > 0 {
            len += 1
        }
        return len
    }
    
    func thefastestSolution(_ input: String) -> Int {
        var characterDict = [Character: Int]()
        var res = 0
        var oddMax = 0
        
        for c in input {
            characterDict[c, default: 0] += 1
        }
        
        for (_, value) in characterDict {
            if value % 2 == 0 {
                res += value
            } else {
                res += value - 1
                oddMax = 1
            }
        }
        return res + oddMax
    }
}
