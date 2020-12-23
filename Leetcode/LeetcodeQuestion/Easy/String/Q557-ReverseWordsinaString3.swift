//
//  Q557-ReverseWordsinaString3.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q557_ReverseWordsinaString3: Executable {
    
    typealias I = String
    typealias O = String
    
    //Runtime: 224 ms, faster than 24.59%, Memory Usage: 16.2 MB, less than 13.11%
    func solution(_ input: String) -> String {
        let ary = input.components(separatedBy: " ")
        var reversedStr = ""
        for str in ary {
            let reversedSubstr = String(str.reversed())
            reversedStr.append("\(reversedSubstr) ")
        }

        return reversedStr.trimmingCharacters(in: .whitespaces)
    }
    
    func solution1(_ input: String) -> String {
        var characterArray = Array(input)
        var startIndex = 0
        var endIndex = 0
        for index in 0..<characterArray.count {
            if characterArray[index] == " " || index == characterArray.count - 1 {
                endIndex = index == characterArray.count - 1 ? index : index - 1
                while startIndex < endIndex {
                    let leftChar = characterArray[startIndex]
                    let rightChar = characterArray[endIndex]
                    characterArray[startIndex] = rightChar
                    characterArray[endIndex] = leftChar
                    endIndex -= 1
                    startIndex += 1
                }
                startIndex = index + 1
            }
        }
        return String(characterArray)
    }
}
