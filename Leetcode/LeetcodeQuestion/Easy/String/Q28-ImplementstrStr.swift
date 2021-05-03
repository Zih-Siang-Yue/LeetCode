//
//  Q28-ImplementstrStr.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q28_ImplementstrStr: Executable {
    typealias I = (String, String)
    typealias O = Int
    
    // Runtime: 12 ms
    func solution(_ input: (String, String)) -> Int {
        let haystack = input.0
        let needle = input.1
        
        if haystack.isEmpty {
            if needle.isEmpty { return 0 }
            return -1
        }
        
        if needle.isEmpty { return 0 }
        
        let needleCount = needle.count
        var start = 0
        var end = needleCount - 1
        while end < haystack.count {
            let startIndex = haystack.index(haystack.startIndex, offsetBy: start)
            let endIndex = haystack.index(haystack.startIndex, offsetBy: end)
            let substring = haystack[startIndex...endIndex]
            if substring == needle {
                return start
            }
            
            start += 1
            end += 1
        }
        
        return -1
    }
    
    // Time Limit Exceeded
    func strStrSolution1(_ haystack: String, _ needle: String) -> Int {
        if needle.count == 0 {
            return 0
        }
        if needle.count > haystack.count {
            return -1
        }
        
        let hStr = haystack
        let nStr = needle
        var i = 0
        var j = 0
        
        while i < hStr.count {
            if hStr[i] == nStr[j] {
                j += 1
                if j == nStr.count {
                    return i - j + 1
                }
            } else {
                i -= j
                j = 0
            }
            i += 1
        }
        
        return -1
    }
    
    // Time Limit Exceeded
    func strStrSolution2(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        else if let range = haystack.range(of: needle) {
            return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        }
        return -1
    }
    
    // Time Limit Exceeded
    func strStrSolution3(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 }
        if haystack.count < needle.count { return -1 }
        if haystack.contains(needle) {
            for i in 0 ..< haystack.count {
                let left = haystack.index(haystack.startIndex, offsetBy: i)
                let right = haystack.index(haystack.startIndex, offsetBy: i + needle.count)
                let subStr:String = String(haystack[left..<right])
                if subStr == needle {
                    return i
                }
            }
        }
        return -1
    }
}
