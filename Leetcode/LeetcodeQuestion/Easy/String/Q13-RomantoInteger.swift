//
//  Q13-RomantoInteger.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q13_RomantoInteger: Executable {
    typealias I = String
    typealias O = Int
    
    func solution(_ input: String) -> Int {
        let s = input
        let dic:[String: Int] = ["I": 1,
                                 "V": 5,
                                 "X": 10,
                                 "L": 50,
                                 "C": 100,
                                 "D": 500,
                                 "M": 1000]
        
        if s.count == 0 {
            return 0
        }
        
        let range = s.index(before: s.endIndex)
        var sum = dic[String(s[range])]!
        if s.count < 2 {
            return sum
        }
        
        for i in 2 ... s.count {
            let range1 = s.index(s.endIndex, offsetBy: -i)
            let range2 = s.index(s.endIndex, offsetBy: -i+1)
            
            if dic[String(s[range1])]! < dic[String(s[range2])]! {
                sum -= dic[String(s[range1])]!
            }
            else {
                sum += dic[String(s[range1])]!
            }
        }
        
        return sum
    }
}
