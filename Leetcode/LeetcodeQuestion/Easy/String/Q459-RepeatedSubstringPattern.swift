//
//  Q459-RepeatedSubstringPattern.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/21.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q459_RepeatedSubstringPattern: Executable {
    
    typealias I = String
    typealias O = Bool

    // 原理不明???  e.g. abcabc + abcabc = abcabcabcabc, bcabcabcab.contains(abc) = yes
    func solution(_ input: String) -> Bool {
        var newStr = input + input
        newStr.removeLast()
        newStr.removeFirst()
        return newStr.contains(input)
    }
    
    func solution1(_ input: String) -> Bool {
        let arr : [UInt8] = Array(input.utf8)
        let n = arr.count
        if n < 2 { return false }
        for i in 1...n - 1 {
            if arr[i] != arr[0] || n % i != 0 {continue}
            let repeatedSub = Array(repeating: arr[0..<i], count: n/i).flatMap{$0}
            if repeatedSub == arr {
                return true
            }
        }
        return false
    }
    
}
