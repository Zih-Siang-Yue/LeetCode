//
//  Q500-KeyboardRow.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/11/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q500_KeyboardRow: Executable {
    func execute() {
        let output = findWords(["Hello", "Alaska", "Dad", "Peace"])
        print("leetcode500 Keyboard Row output: \(output)")
    }
    
    func findWords(_ words: [String]) -> [String] {
        return solution(words)
    }
    
    func solution(_ words: [String]) -> [String] {
        let keyboardDict: [String: Int] = [
            "Q": 1, "W": 1, "E": 1, "R": 1, "T": 1, "Y": 1, "U": 1, "I": 1, "O": 1, "P": 1,
            "A": 2, "S": 2, "D": 2, "F": 2, "G": 2, "H": 2, "J": 2, "K": 2, "L": 2,
            "Z": 3, "X": 3, "C": 3, "V": 3, "B": 3, "N": 3, "M": 3
        ]
        
        var ans: [String] = []
        for str in words {
            let upperStr = str.uppercased()
            var line: Int? = nil
            var same: Bool = true
            for char in upperStr {
                guard let line1 = line else {
                    line = keyboardDict[String(char)]
                    continue
                }
                if keyboardDict[String(char)] != line1 {
                    same = false
                    break
                }
            }
            if same {
                ans.append(str)
            }
        }
        return ans
    }
}
