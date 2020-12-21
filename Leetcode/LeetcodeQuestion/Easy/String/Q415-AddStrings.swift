//
//  Q415-AddStrings.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/8.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q415_AddStrings: Executable {
    
    typealias I = (String, String)
    typealias O = String

    func solution(_ input: (String, String)) -> String {
        let chars1 = Array(input.0.reversed())
        let chars2 = Array(input.1.reversed())
        
        var carry = 0
        var ans: String = ""
        var index1 = 0
        var index2 = 0
        
        while index1 < chars1.count || index2 < chars2.count || carry > 0 {
            let char1 = index1 < chars1.count ? chars1[chars1.index(chars1.startIndex, offsetBy: index1)] : "0"
            let char2 = index2 < chars2.count ? chars2[chars2.index(chars2.startIndex, offsetBy: index2)] : "0"
            let num1 = Int(String(char1)) ?? 0
            let num2 = Int(String(char2)) ?? 0
            let sum = num1 + num2 + carry
            ans.append(String(sum % 10))
            carry = sum / 10
            index1 += 1
            index2 += 1
        }
        
        return String(ans.reversed())
    }

}
