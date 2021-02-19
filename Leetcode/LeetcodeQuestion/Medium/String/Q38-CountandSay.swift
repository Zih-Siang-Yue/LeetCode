//
//  Q38-CountandSay.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/29.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q38_CountandSay: Executable {
    
    typealias I = Int
    typealias O = String
    
    // Runtime: 304 ms, faster than 14.50%
    func solution(_ input: Int) -> String {
        let initStr = "1"
        return categorizeTheNumber(n: input, s: initStr)
    }
    
    /* According to the solution(algorithm) that leetcode gave
     [Sn] -> [Sn+1] 可以從前一個推算出下一個, 反之亦然
     1. 將相同的字元分離成 subCharacter, 格式為 |counts, digits|
     e.g.
     Sn => 1211
     "1211" -> [{1}, {2}, {11}]
     也就是轉換為 1個1 1個2 2個1 這種格式
     下面用兩個 array (counts & digits) 裝起來
     
     2. 重組以上被分隔的 數量&字元 ((counts & digits))
     Sn+1 => 111221
     
     3. 接著就是看n 要做幾次就遞迴(recursive)幾次就行
     */
    func categorizeTheNumber(n: Int, s: String) -> String {
        if n <= 1 { return s }
        
        var counts: [Int] = []
        var digits: [Character] = []
        var count = 1
        var char = s[s.index(s.startIndex, offsetBy: 0)]
        for i in 1 ..< s.count {
            let nextChar = s[s.index(s.startIndex, offsetBy: i)]
            if char != nextChar {
                counts.append(count)
                digits.append(char)

                count = 1
                char = nextChar
            }
            else {
                count += 1
            }
        }
        
        counts.append(count)
        digits.append(char)

        var newStr = ""
        for i in 0 ..< counts.count {
            let count: String = String(counts[i])
            let digit: String = String(digits[i])
            newStr.append(count)
            newStr.append(digit)
        }

        return categorizeTheNumber(n: n - 1, s: newStr)
    }
}
