//
//  Q392_IsSubsequence.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/26.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q392_IsSubsequence: Executable {
    func execute() {
        let output:Bool = isSubsequence("axc", "ahbgdc")
        print("leetcode392 output: \(output)")
    }
    
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        return solution(s, t)
    }
    
    //Runtime: 4 ms, faster than 90.00%; Memory Usage: 14.3 MB, less than 48.57%
    func solution(_ s: String, _ t: String) -> Bool {
        if t.isEmpty && s.isEmpty { return true }
        if t.isEmpty { return false }
        if s.isEmpty { return true }

        var i: Int = 0
        for charT in t {
            let charS = s[s.index(s.startIndex, offsetBy: i)]
            if i == s.count - 1 && charT == charS {
                return true
            }
            if charT != charS {
                continue
            }
            i += 1
        }
        return false
    }
}
