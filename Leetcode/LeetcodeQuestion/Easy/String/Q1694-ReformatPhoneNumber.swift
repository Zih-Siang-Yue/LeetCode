//
//  Q1694-ReformatPhoneNumber.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/25.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q1694_ReformatPhoneNumber: Executable {
    typealias I = String
    typealias O = String
    
    func solution(_ input: String) -> String {
        var res = "", c = 0
        for s in input {
            if s.isNumber {
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
}
