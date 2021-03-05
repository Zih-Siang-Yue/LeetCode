//
//  Q830-PositionsofLargeGroups.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/5.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q830_PositionsofLargeGroups: Executable {
    typealias I = String
    typealias O = [[Int]]
    
    /*
     Step1: 需要計算char.count >= 3 -> 紀錄該char 連續出現的startIndex-endIndex(最長的range)
     */
    // Runtime: 132 ms, faster than 10.53%
    func solution(_ input: String) -> [[Int]] {
        if input.count < 3 { return [] }
        
        var positions: [[Int]] = []
        let firstChar = input[input.startIndex]
        var ary: [String] = [String(firstChar)]
        for index in 1..<input.count {
            let char = String(input[input.index(input.startIndex, offsetBy: index)])
            
            let lastStr = ary.last!
            if lastStr.contains(char) {
                ary[ary.endIndex-1] = lastStr + char
            }
            else {
                if lastStr.count >= 3 {
                    let position = [index - lastStr.count, index - 1]
                    positions.append(position)
                }
                ary.append(char)
            }
        }
        if ary.last!.count >= 3 {
            let position = [input.count - ary.last!.count, input.count - 1]
            positions.append(position)
        }
        return positions
    }
    
    func thefastestSolution(_ input: String) -> [[Int]] {
        var index = input.startIndex
        let end = input.endIndex
        var result = [[Int]]()
        var length = 0
        var current: Character = " "
        var last: Character = " "
        var loc = 0
        while index < end{
            current = input[index] 
            if last == current{
                length += 1
            }
            else {
                if length >= 3  {
                    result.append([loc-length, loc-1])
                }
                length = 1
            }
            last = current
            index = input.index(after: index)
            loc += 1
        }
        if length >= 3{
            result.append([loc-length, loc-1])
        }
        
        return result
    }
}
