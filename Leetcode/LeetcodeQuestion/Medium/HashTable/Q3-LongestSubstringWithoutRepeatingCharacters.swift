//
//  Q3-LongestSubstringWithoutRepeatingCharacters.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q3_LongestSubstringWithoutRepeatingCharacters: Executable {
    
    typealias I = String
    typealias O = Int
    
    func execute() {
        let output = lengthOfLongestSubstring("dvdf")
        print("leetcode3 output: \(output)")
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        return solution(s)
    }
    
    func solution(_ input: String) -> Int {
        var ary = [String]()
        var length = 0
        for i in input {
            if var substr = ary.last {
                if substr.contains(i) {
                    let index = substr.firstIndex(of: i)!
                    let newsubStr = substr[substr.index(after: index)...]
                    var newStr = String(newsubStr)
                    newStr.append(i)
                    ary.append(newStr)
                }
                else {
                    substr.append(i)
                    ary[ary.count-1] = substr
                }
            }
            else {
                ary.append(String(i))
            }
            length = max(length, ary.last!.count)
        }
        return length
    }
}
