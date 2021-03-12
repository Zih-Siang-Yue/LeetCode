//
//  Q238-ProductofArrayExceptSelf.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/12.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q238_ProductofArrayExceptSelf: Executable {
    typealias I = [Int]
    typealias O = [Int]
    
    // Runtime: 204 ms, faster than 86.28%
    func solution(_ input: [Int]) -> [Int] {
        var answer: [Int] = []
        var zeroDict: [Int: Int] = [:]
        var total = 1
        
        for i in 0..<input.count {
            if input[i] == 0 {
                zeroDict[i] = 0
                if zeroDict.keys.count > 1 {
                    return Array(repeating: 0, count: input.count)
                }
                continue
            }
            total *= input[i]
        }
        
        if zeroDict.keys.count == 1 {
            var ary = Array(repeating: 0, count: input.count)
            ary[zeroDict.keys.first!] = total
            return ary
        }
        
        for num in input {
            answer.append(total / num)
        }
        return answer
    }
    
    // Runtime: 184 ms,
    func thefastestSolution(_ input: [Int]) -> [Int] {
        var solution: [Int] = [Int](repeating: 1, count: input.count)
        
        var leadingProduct: Int = 1
        var trailingProduct: Int = 1
        
        var leadingIndex: Int = 0
        var trailingIndex: Int = input.count - 1
        while leadingIndex < input.count {
            solution[leadingIndex] *= leadingProduct
            solution[trailingIndex] *= trailingProduct
            
            leadingProduct *= input[leadingIndex]
            trailingProduct *= input[trailingIndex]
            
            leadingIndex += 1
            trailingIndex -= 1
        }
        
        return solution
    }
}
