//
//  Q40-CombinationSumII.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/14.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q40_CombinationSum2: Executable {
    
    typealias I = ([Int], Int)
    typealias O = [[Int]]
    
    var sortedAry: [Int] = []
        
    func solution(_ input: ([Int], Int)) -> [[Int]] {
        self.sortedAry = input.0.sorted()
        var ans: Set<[Int]> = []
        var com: [Int] = []
        solution(&ans, combination: &com, input.1, 0)
        return Array(ans)
    }
    
    func solution(_ ans: inout Set<[Int]>, combination: inout [Int], _ remainder: Int, _ start: Int) {
        if remainder < 0 { return }
        if remainder == 0 {
            ans.insert(combination)
        }
        
        for i in start ..< sortedAry.count {
            if i > start && sortedAry[i] == sortedAry[i - 1] {
                continue
            }
            guard sortedAry[i] <= remainder else { return }
            combination.append(sortedAry[i])
            solution(&ans, combination: &combination, remainder - sortedAry[i], i + 1)
            combination.removeLast()
        }
    }
}
