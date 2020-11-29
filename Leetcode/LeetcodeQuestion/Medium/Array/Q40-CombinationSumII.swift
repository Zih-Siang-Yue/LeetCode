//
//  Q40-CombinationSumII.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/14.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q40_CombinationSum2: Executable {
    
    var sortedAry: [Int] = []
    
    func execute() {
        let output = combinationSum2([10,1,2,7,6,1,5], 8)
        print("leetcode40 Combination Sum 2 output: \(output)")
    }
    
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        self.sortedAry = candidates.sorted()
        var ans: Set<[Int]> = []
        var com: [Int] = []
        solution(&ans, combination: &com, target, 0)
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
