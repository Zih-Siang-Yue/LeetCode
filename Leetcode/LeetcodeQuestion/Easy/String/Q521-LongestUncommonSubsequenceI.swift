//
//  Q521-LongestUncommonSubsequenceI.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/2/18.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q521_LongestUncommonSubsequenceI: Executable {
    typealias I = (String, String)
    typealias O = Int
    
    // Runtime: 4 ms, faster than 33.33% 
    func solution(_ input: (String, String)) -> Int {
        let a = input.0
        let b = input.1
        
        var subStr = a.count > b.count ? a : b
        
        for _ in subStr {
            if !a.contains(subStr) || !b.contains(subStr) { //只要其中之一 不包含substr 就會進入
                return subStr.count
            }
            subStr.removeLast()             // 兩者都包含
        }
        if subStr.count == 0 {
            return -1
        }
        return subStr.count
    }
}
