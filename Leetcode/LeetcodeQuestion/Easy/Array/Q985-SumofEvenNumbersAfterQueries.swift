//
//  Q985-SumofEvenNumbersAfterQueries.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/11.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q985_SumofEvenNumbersAfterQueries: Executable {
    typealias I = ([Int], [[Int]])
    typealias O = [Int]
    
    // Runtime: 644 ms, faster than 85.71% 
    func solution(_ input: ([Int], [[Int]])) -> [Int] {
        var A: [Int] = input.0
        let queries: [[Int]] = input.1
        
        var answer: [Int] = []
        var sum = A.filter {$0 % 2 == 0}.reduce(0, +)
        
        for i in 0 ..< queries.count {
            let index = queries[i][1]
            let val = queries[i][0]
            if A[index] % 2 == 0 { sum -= A[index] }
            A[index] += val
            if A[index] % 2 == 0 { sum += A[index] }
            answer.append(sum)
        }
        
        return answer
    }
    
    func timeLimitedSolution(_ input: ([Int], [[Int]])) -> [Int] {
        let A: [Int] = input.0
        let queries: [[Int]] = input.1
        
        var oddDict: [Int: Int] = [:]
        var evenDict: [Int: Int] = [:]
        var answer: [Int] = []
        
        for (index, element) in A.enumerated() {
            if element % 2 == 0 {
                evenDict[index] = element
                continue
            }
            oddDict[index] = element
        }
        
        for i in 0 ..< queries.count {
            let index = queries[i][1]
            let val = queries[i][0]
            
            if oddDict[index] == nil {  //在 evenDict 找到值
                let newVal = evenDict[index]! + val
                if newVal % 2 == 0 {    //新值為偶數
                    evenDict[index] = newVal
                } else {                //新值為奇數
                    evenDict[index] = nil
                    oddDict[index] = newVal
                }
            } else {                    //在 oddDict 找到值
                let newVal = oddDict[index]! + val
                if newVal % 2 == 0 {    //新值為偶數
                    evenDict[index] = newVal
                    oddDict[index] = nil
                } else {                //新值為奇數
                    oddDict[index] = newVal
                }
            }
            answer.append(evenDict.values.reduce(0, +))
            
        }
        return answer
    }
}
