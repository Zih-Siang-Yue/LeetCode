//
//  Q345-ReverseVowelsofaString.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/31.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q345_ReverseVowelsofaString: Executable {
    
    typealias I = String
    typealias O = String
    
    //Runtime: 296 ms, faster than 6.74%, Memory Usage: 15.4 MB, less than 95.51%
    /*
     1. for loop一次字串, 找出字串裡所有的母音字元(大小寫都要), 並存到ary裡
     2. 創建一個 reversedStr
     3. 再for loop一次字串, 這次若遇到母音則從剛剛ary 提取最後一個加入到reversedStr, 子音則直接加入
     */
    func solution(_ input: String) -> String {
        if input.isEmpty { return "" }
        
        let vowels = ["A","E","I","O","U","a", "e", "i", "o", "u"]
        var chars: [Character] = []
        for char in input {
            if vowels.contains(String(char)) {
                chars.append(char)
            }
        }

        var reversedStr = ""
        for char in input {
            if !vowels.contains(String(char)) {
                reversedStr += String(char)
            }
            else {
                reversedStr += String(chars.removeLast())
            }
        }
        return reversedStr
    }
    
    func fastestSolution(_ input: String) -> String {
        var letters = Array(input)
        if letters.count < 2 { return input }
        
        let vowles: Set<Character> = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        var left = 0
        var right = letters.count - 1
        while left < right {
            let leftLetter = letters[left]
            let rightLetter = letters[right]
            var isleftVowle = vowles.contains(letters[left])
            var isrightVowle = vowles.contains(letters[right])
            
            if isleftVowle && isrightVowle {
                letters[left] = rightLetter
                letters[right] = leftLetter
                left = left + 1
                right = right - 1
            } else if !isleftVowle {
                left = left + 1
            } else if !isrightVowle {
                right = right - 1
            }
        }
        
        return String(letters)
    }
}
