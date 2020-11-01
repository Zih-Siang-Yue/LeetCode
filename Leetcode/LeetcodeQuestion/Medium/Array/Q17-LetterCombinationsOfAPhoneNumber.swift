//
//  Q17-LetterCombinationsOfAPhoneNumber.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/1.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class LetterCombinationsOfAPhoneNumber: Executable {
    func execute() {
        let output = letterCombinations("234")
        print("leetcode17 LetterCombinationsOfAPhoneNumber output:\(output)")
    }
    
    func letterCombinations(_ digits: String) -> [String] {
       return solution(digits)
    }
    
    func solution(_ digits: String) -> [String] {
        let dict:[Character:[String]] = ["2":["a","b","c"],
                                         "3":["d","e","f"],
                                         "4":["g","h","i"],
                                         "5":["j","k","l"],
                                         "6":["m","n","o"],
                                         "7":["p","q","r","s"],
                                         "8":["t","u","v"],
                                         "9":["w","x","y","z"]]
        
        if digits.isEmpty { return [] }
        if digits.count == 1 {
            let firstChar = digits[digits.startIndex]
            return dict[firstChar]!
        }
        
        var answers:[String] = dict[digits[digits.startIndex]]!
        
        for i in 1 ..< digits.count {
            let index = digits.index(digits.startIndex, offsetBy: i)
            let char = digits[index]
            guard let letters = dict[char] else { return [] }
            var temp:[String] = []
            
            for answer in answers {
                for letter in letters {
                    let combination = answer + letter
                    temp.append(combination)
                }
            }
            answers = temp
        }
        return answers
    }
}
