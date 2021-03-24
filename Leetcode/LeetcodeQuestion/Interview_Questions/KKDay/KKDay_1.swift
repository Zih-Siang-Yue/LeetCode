//
//  KKDay_1.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/24.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class KKDay_1: Executable {
    typealias I = String
    typealias O = String
   
    func solution(_ input: String) -> String {
        var res = "", c = 0
        for s in input {
            if detectIsNumber(s) {
                if c == 3 {
                    c = 0
                    res += "-"
                }
                c += 1
                res += "\(s)"
            }
        }
        if c == 1 {
            let a1 = res.removeLast()
            res.removeLast()
            let a2 = res.removeLast()
            res += "-\(a2)\(a1)"
        }
        return res
    }
    
    func detectIsNumber(_ s: String.Element) -> Bool {
        let s = String(s)
        return !s.isEmpty && s.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
