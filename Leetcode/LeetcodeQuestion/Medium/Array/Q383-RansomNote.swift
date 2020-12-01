//
//  Q383-RansomNote.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/10.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q383_RansomNote: Executable {
    
    typealias I = (String, String)
    typealias O = Bool
    
    func execute() {
        let output = canConstruct("aab", "baa")
        print("leetcode383 Ransom Note output: \(output)")
    }
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        return solution((ransomNote, magazine))
    }
    
    func solution(_ input: (String, String)) -> Bool {
        return solution1(input.0, input.1)
    }
    
    //Runtime: 36 ms, faster than 87.50%, Memory Usage: 14.5 MB, less than 32.95%
    func solution1(_ ransomNote: String, _ magazine: String) -> Bool {
        if ransomNote.isEmpty { return true }
        
        var magazine = magazine
        for char in ransomNote {
            if !magazine.contains(char) { return false }
            let index = magazine.firstIndex(of: char)
            magazine.remove(at: index!)
        }
        
        return true
    }
}
