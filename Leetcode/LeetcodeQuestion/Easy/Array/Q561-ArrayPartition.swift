//
//  Q561-ArrayPartition.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/9.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q561_ArrayPartition: Executable {
    typealias I = [Int]
    typealias O = Int
    
    // Runtime: 536 ms, faster than 66.04%
    func solution(_ input: [Int]) -> Int {
        let sortedNums = input.sorted()
        var sum = 0
        for i in stride(from: 0, to: sortedNums.count, by: 2) {
            sum += sortedNums[i]
        }
        return sum
    }
    
    // Runtime: 332 ms
    func thefastestSolution(_ input: [Int]) -> Int {
        var resultArr = input
        resultArr.sort(by: <)
        var resultNum = 0
        for i in stride(from: 0, to: resultArr.count, by: 2) {
            resultNum += resultArr[i]
        }
        return resultNum
    }
}
