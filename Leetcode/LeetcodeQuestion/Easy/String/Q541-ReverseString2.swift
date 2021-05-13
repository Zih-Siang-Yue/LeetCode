//
//  Q541-ReverseString2.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/12.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q541_ReverseString2: Executable {
    typealias I = (String, Int)
    typealias O = String
    
    //Runtime: 100 ms, faster than 38.30%
    func solution(_ input: (String, Int)) -> String {
        var s = input.0
        let k = input.1
        
        var index = 0
        
        while index < s.count {
            let start = index
            let end = min(index + k - 1, s.count - 1)

            let range = s.index(s.startIndex, offsetBy: start) ... s.index(s.startIndex, offsetBy: end)
            let subStr = String(s[range])
            let reversedStr = String(subStr.reversed())
            s.replaceSubrange(range, with: reversedStr)
            
            index += 2 * k
        }
        return s
    }
    
    func fastestSolution(_ str: String, _ k: Int) -> String {
        var s = Array(str)
        var i = 0
        while i < s.count {
            var symIndex = i + (k-1)
            if (i < symIndex) {
                if symIndex >= s.count - 1 {
                    symIndex = s.count - 1
                }
                reverse(&s, i, symIndex)
            }
            i += k * 2
        }
        return String(s)
    }
    
    func reverse(_ s: inout [Character], _ start: Int, _ stop: Int) {
        var counter = 0
        for i in (start...stop) {
            let sym = stop - counter
            if i < sym {
                let temp = s[i]
                s[i] = s[sym]
                s[sym] = temp
            }
            counter+=1
        }
    }
}

