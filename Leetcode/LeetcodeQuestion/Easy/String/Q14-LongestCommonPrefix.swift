//
//  Q14-LongestCommonPrefix.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q14_LongestCommonPrefix: Executable {
    typealias I = [String]
    typealias O = String
    
    func solution(_ input: [String]) -> String {
        //1. 找到strs 裡最小的值, 並把它當作longestPrefix
        //2. for loop strs
        //3. 當 ！str[i].hasPrefex(目前最長的Prefix),longestPrefix.count > 0 進入迴圈 -> longestPrefix.removeLast()
        //4. 在for loop裡面 若longestPrefix.count == 0 -> return "" 因為沒有相同的prefix
        //5. 跳出for loop後 回傳longestPrefix
        
        guard let shortest = input.min() else {
            return "no prefix"
        }
        
        var longestPrefix:String = shortest
        
        for str in input {
            
            while !str.hasPrefix(longestPrefix), longestPrefix.count > 0 {
                longestPrefix.removeLast()
            }
            
            if longestPrefix.count == 0 { return longestPrefix }
        }
        
        return longestPrefix
    }
}
