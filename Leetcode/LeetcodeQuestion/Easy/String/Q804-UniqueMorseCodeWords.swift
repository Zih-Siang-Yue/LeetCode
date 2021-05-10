//
//  Q804-UniqueMorseCodeWords.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/10.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q804_UniqueMorseCodeWords: Executable {
    typealias I = [String]
    typealias O = Int
    
    // Runtime: 8 ms, faster than 82.14%
    func solution(_ input: [String]) -> Int {
        let morseCodeDict: [Character: String] = ["a":".-",
                                                  "b":"-...",
                                                  "c":"-.-.",
                                                  "d":"-..",
                                                  "e":".",
                                                  "f":"..-.",
                                                  "g":"--.",
                                                  "h":"....",
                                                  "i":"..",
                                                  "j":".---",
                                                  "k":"-.-",
                                                  "l":".-..",
                                                  "m":"--",
                                                  "n":"-.",
                                                  "o":"---",
                                                  "p":".--.",
                                                  "q":"--.-",
                                                  "r":".-.",
                                                  "s":"...",
                                                  "t":"-",
                                                  "u":"..-",
                                                  "v":"...-",
                                                  "w":".--",
                                                  "x":"-..-",
                                                  "y":"-.--",
                                                  "z":"--.."]
        
        var morseCodeSet: Set<String> = []
        for word in input {
            var str = ""
            for char in word {
                str.append(morseCodeDict[char]!)
            }
            morseCodeSet.insert(str)
        }
        return morseCodeSet.count
    }
    
    func fastestSolution(_ words: [String]) -> Int {
        let morseArray = [".-","-...","-.-.","-..",".","..-.","--.","....","..",
                          ".---","-.-",".-..","--","-.","---",".--.","--.-",".-.",
                          "...","-","..-","...-",".--","-..-","-.--","--.."]
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        var map = [String:String]()
        
        for i in 0..<alphabet.count {
            map[String(describing: alphabet[i])] = morseArray[i]
        }
        
        var set = Set<String>()
        
        for word in words {
            var morse = ""
            for char in word {
                morse += map[String(char)]!
            }
            set.insert(morse)
        }
        
        return set.count
    }
}
