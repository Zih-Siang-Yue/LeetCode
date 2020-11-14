//
//  Q49-GroupAnagrams.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/8.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q49_GroupAnagrams: Executable {
    func execute() {
         // [[bat], [ate, eat, tea], [tan, nat]]
        let output = groupAnagrams(["eat","tea","tan","ate","nat","bat"])
        print("leetcode49 group anagrams output: \(output)")
    }
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        return solution(strs)
    }
    
    /**
     1. 先排除 input.isEmpty 狀況
     2. 以 sortedStr 為key, value 包裹不同順序str 的ary
     3. 相同數量字母不同排列之字加到同一個ary, 最後回傳 dict.values
     */
    func solution(_ strs: [String]) -> [[String]] {
        if strs.isEmpty { return [] }
        
        var answers: [String:[String]] = [:]
        for str in strs {
            let sortedStr = String(str.sorted())
            if answers[sortedStr] != nil {
                var ary = answers[sortedStr]
                ary?.append(str)
                answers[sortedStr] = ary
            }
            else {
                answers[sortedStr] = [str]
            }
        }
        return Array(answers.values)
    }
}
