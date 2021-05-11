//
//  Q1071-GreatestCommonDivisorofStrings.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/11.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q1071_GreatestCommonDivisorofStrings: Executable {
    typealias I = (String, String)
    typealias O = String
    
    func solution(_ input: (String, String)) -> String {
        return gcdOfStrings(input.0, input.1)
    }
    
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1.count < str2.count {
            return gcdOfStrings(str2, str1)
        } else if !str1.starts(with: str2) {
            return ""
        } else if str2.count == 0 {
            return str1
        } else {
            let range = str1.range(of: str2)!
            let tempStr = str1.replacingCharacters(in: range, with: "")
            return gcdOfStrings(str2, tempStr)
        }
    }
}
