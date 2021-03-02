//
//  Q922-SortArraybyParity.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q922_SortArraybyParity: Executable {
    typealias I = [Int]
    typealias O = [Int]
    
    //Runtime: 296 ms, faster than 8.06%
    func solution(_ input: [Int]) -> [Int] {
        var odds: [Int] = []
        var evens: [Int] = []
        for num in input {
            if num % 2 == 0 {
                evens.append(num)
                continue
            }
            odds.append(num)
        }
        
        var sortedNums: [Int] = []
        for i in 0..<input.count {
            if i % 2 == 0 {
                sortedNums.append(evens.removeFirst())
                continue
            }
            sortedNums.append(odds.removeFirst())
        }
        return sortedNums
    }
    
    //The Fastest solution I've seen. Mar.2 2021
    func theFastestSolution(_ input: [Int]) -> [Int] {
        var A = input
        var evenIndex = 0
        var oddIndex = 1
        while evenIndex < A.count {
            if A[evenIndex] % 2 != 0 {  //奇數     [4,2,5,7]
                while A[oddIndex] % 2 != 0 { //奇數index 遇到奇數數值 就直接往後推兩位, 推到他不為奇數為止
                    oddIndex += 2
                }
                let tmp = A[oddIndex]   //進到此處代表 oddIndex 的值不是奇數, evenIndex 的值不是偶數, 故兩者在這互換
                A[oddIndex] = A[evenIndex]
                A[evenIndex] = tmp
            }
            evenIndex += 2  //偶數index 遇到偶數數值 就直接往後推兩位
        }
        return A
    }
}
