//
//  Q696-CountBinarySubstrings.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/31.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q696_CountBinarySubstrings: Executable {
    
    typealias I = String
    typealias O = Int
    
    //The algorithm that the other engineer provide in swift
    func solution(_ input: String) -> Int {
        var oneCount = 0
        var zeroCount = 0
        var totalCount = 0
        var lastChar: Character = "x"
        for char in input {
            if char == "0" {
                if lastChar != "0" {
                    zeroCount = 0
                }
                if oneCount > 0 {
                    totalCount += 1
                    oneCount -= 1
                }
                zeroCount += 1
            } else {
                if lastChar != "1" {
                    oneCount = 0
                }
                if zeroCount > 0 {
                    totalCount += 1
                    zeroCount -= 1
                }
                oneCount += 1
            }
            lastChar = char
        }
        return totalCount
    }
    
    /* The algorithm that the leetcode provide
     First, convert the string into an array 'groups' that represents the length of same-character contiguous blocks within the string
     e.g. "110001111000000"
     groups = [2, 3, 4, 6]
     將連續的數字計算出數量, 放進array(groups)
     
     Second, count the number of valid binary strings between groups[i] and groups[i+1]
     e.g. group[i] = 2, group[i+1] = 3
     We clearly can make min(groups[i], groups[i+1]) -> 2
     取小的, 因為數字間的差距只會相等, 11 後面就要跟著兩個 00 不可能為 3個
     
     Third, take the sum of min(groups[i], groups[i+1])
     e.g. 2 + 3 + 4 = 9
     return 9
     */
    
    //Time Limited
    func solutionthatLeetcodeProvide(_ input: String) -> Int {
        let group = categorizeDigitalNumber(s: input)
        var totalCount = 0
        for i in 1 ..< group.count {
            let count = min(group[i-1], group[i])
            totalCount += count
        }
        return totalCount
    }
    
    func categorizeDigitalNumber(s: String) -> [Int] {
        var count = 1
        var group: [Int] = []
        var char = s[s.index(s.startIndex, offsetBy: 0)]
        for i in 1 ..< s.count {
            let nextChar = s[s.index(s.startIndex, offsetBy: i)]
            if char != nextChar {
                group.append(count)
                count = 1
                char = nextChar
            }
            else {
                count += 1
            }
        }
        group.append(count)
        return group
    }
        
    //Time limited
    func timeLimitedSolution(_ input: String) -> Int {
        var possibilities: [String] = []
        var count = 0
        var i = 0
        while i < input.count - 1 {
            var firstStr = String(input[input.index(input.startIndex, offsetBy: i)])
            count = firstStr == "1" ? count + 1 : count - 1
            
            for j in i + 1 ..< input.count {
                let nextChar: Character = input[input.index(input.startIndex, offsetBy: j)]
                count = nextChar == "1" ? count + 1 : count - 1
                firstStr.append(nextChar)
                if count == 0 {
                    possibilities.append(firstStr)
                    break
                }
                
            }
            i += 1
            count = 0
        }
        return possibilities.count
    }
    
}
