//
//  Q917-ReverseOnlyLetters.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/29.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q917_ReverseOnlyLetters: Executable {
    
    typealias I = String
    typealias O = String
    
    //Runtime: 4 ms, faster than 90.63%, Memory Usage: 14.4 MB, less than 43.75%
    //Stack solution
    /*
     Q. 遇到是英文字母則反轉順序, 其他符號保持原位置
     1. 創建一個Stack
     2. for loop 字串一次, 若是英文字母則加入stack
     3. 再for loop一次, 這次若遇到英文字母則從stack pop出最後一個, 不然就直接加入該符號
     */
    func solution(_ input: String) -> String {
        var stack = LeetcodeStack<Character>()
        for char in input {
            if char.isLetter {
                stack.push(char)
            }
        }
        var reversedStr = ""
        for char in input {
            if char.isLetter {
                if let word = stack.pop() {
                    reversedStr.append(word)
                }
                continue
            }
            reversedStr.append(char)
        }
        return reversedStr
    }
}
