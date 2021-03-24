//
//  Q1103-DistributeCandiestoPeople.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/22.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q1103_DistributeCandiestoPeople: Executable {
    typealias I = (Int, Int)
    typealias O = [Int]
    
    // Runtime: 8 ms, faster than 20%
    func solution(_ input: (Int, Int)) -> [Int] { 
        var candies: Int = input.0
        let num_people: Int = input.1
        
        var answer = Array(repeating: 0, count: num_people)
        var x = 0
        while candies > 0 {
            for (index, val) in answer.enumerated() {
                if (candies <= 0) { return answer }
                let candyCount = (x * num_people) + index + 1
                answer[index] = candies > candyCount ? val + candyCount : val + candies
                candies -= candyCount
            }
            x += 1
        }
        
        return answer
    }
    
    func thefastestSolution(_ input: (Int, Int)) -> [Int] {
        var candies: Int = input.0
        let num_people: Int = input.1
        
        var ans = Array(repeating: 0, count: num_people)
        var candy = 1
        var i = 0
        
        while candy <= candies {
            if i == num_people {
                i = 0
            }
            ans[i] += candy
            candies -= candy
            candy += 1
            i += 1
        }
        
        if candies > 0 {
            if i == num_people {
                i = 0
            }
            ans[i] += candies
        }
        return ans
    }
}
