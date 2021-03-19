//
//  Q1002-FindCommonCharacters.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/18.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q1002_FindCommonCharacters: Executable {
    typealias I = [String]
    typealias O = [String]
    
    // Runtime: 52 ms, faster than 93.08%
    func solution(_ input: [String]) -> [String] {
        var A = input
        var answer: [String] = []
        for char in A[0] {
            var isIncluded = true
            for i in 1..<A.count {
                guard let charIndex = A[i].firstIndex(of: char) else {
                    isIncluded = false
                    break
                }
                A[i].remove(at: charIndex)
            }
            if isIncluded {
                answer.append(String(char))
            }
        }
        return answer
    }
    
    func thefastestSolution(_ input: [String]) -> [String] {
        var chars = [Int](repeating:Int.max, count: 26)
        var ret = [String]()
        
        for str in input {
            var _chars = [Int](repeating:0, count: 26)
            for c in str {
                let a = Int(c.asciiValue!) - 97
                _chars[a] += 1
            }
            for i in 0..<26 {
                chars[i] = min(chars[i], _chars[i])
            }
        }
        
        for i in 0..<26 {
            for _ in 0..<chars[i] {
                ret.append(String(Character(UnicodeScalar(i + 97)!)))
            }
        }
        
        return ret
    }
}
