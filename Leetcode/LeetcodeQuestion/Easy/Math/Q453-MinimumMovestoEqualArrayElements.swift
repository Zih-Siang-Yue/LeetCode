//
//  Q453-MinimumMovestoEqualArrayElements.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/26.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q453_MinimumMovestoEqualArrayElements: Executable {
    typealias I = [Int]
    typealias O = Int
    
    func solution(_ input: [Int]) -> Int {
        var min = input.first!
        var sum = 0
        for num in input {
            sum += num
            if num < min {
                min = num
            }
        }
        return sum - ((input.count - 1) * min) - min
    }
}
