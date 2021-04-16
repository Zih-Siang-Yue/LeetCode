//
//  shortestPrefix.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/4/12.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Binance_ShortestStr: Executable {
    typealias I = String
    typealias O = String
    
    //abcabcdabcde
    func solution(_ input: String) -> String {
        var str: String = ""
        var shortestStr: String = ""
        for char in input {
            if str.contains(char) {
                if shortestStr.isEmpty {
                    shortestStr = str
                } else {
                    shortestStr = shortestStr.count > str.count ? str : shortestStr
                }
                str = String(char)
                continue
            }
            str.append(char)
        }
        return shortestStr.count > str.count ? str : shortestStr
    }
}
