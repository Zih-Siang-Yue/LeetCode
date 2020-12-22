//
//  Q520-DetectCapital.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/22.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q520_DetectCapital: Executable {
    
    typealias I = String
    typealias O = Bool
    
    func solution(_ input: String) -> Bool {
        if input.isEmpty { return false }
        if input.count == 1 { return true }
        
        let subStr = String(input[input.index(after: input.startIndex)...])
        if input.first!.isUppercase {
            return allUpper(subStr) || allLower(subStr)
        }
        return allLower(subStr)
    }
    
    func allUpper(_ s: String) -> Bool {
        var isUpper: Bool = true
        for char in s {
            isUpper = isUpper && char.isUppercase
        }
        return isUpper
    }
    
    func allLower(_ s: String) -> Bool {
        var isLower: Bool = true
        for char in s {
            isLower = isLower && char.isLowercase
        }
        return isLower
    }
}
