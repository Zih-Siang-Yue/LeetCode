//
//  Q39-CombinationSum.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q39_CombinationSum: Executable {
    
    typealias I = ([Int], Int)
    typealias O = [[Int]]

    var sortedCandidates:[Int] = []
    
    func solution(_ input: ([Int], Int)) -> [[Int]] {
         /*
         Step1: 將排序過後的 candidates 存在一個全域ary 裡
         Step2: 因回傳值是 2維陣列，故各準備一個 answerAry, currentAry
         Step3: 因為要不停往下探尋加總的值是否符合target, 要設計一個遞迴方法
         */
        self.sortedCandidates = input.0.sorted()
        var answer:[[Int]] = []
        var current:[Int] = []
        dfs(&answer, &current, input.1, 0)
        return answer
    }
    
    func dfs(_ answer: inout [[Int]], _ current: inout [Int], _ remainder: Int, _ start: Int) {
        /*
         Step4: 遞迴的重點就是, 最一開始要寫判斷式將其回傳, 故第一步將 remainder < 0 給排除
         Step5: remainder == 0, 表示某幾個candidate 加總到最後剛好符合target, 將蒐集到的某一方案(current) 加到answer裡面
         Step6: 從start 當初始值 ..< sortedCandidates, 若 sortedCandidates[i] > target(每一次減掉上一個candidate的值) return
         Step7: candidate 之一 < target, 加入currentAry, 再次呼叫此遞迴func(remainder 要先減掉當前candidate)
         Step8: 若remainder 被扣到 < 0 || candidate 比remainder 還大, 則會觸發return 執行最後的 current.removeLast
         */
        if remainder < 0 { return }
        if remainder == 0 {
            answer.append(current)
            return
        }
        
        for i in start ..< sortedCandidates.count {
            guard sortedCandidates[i] <= remainder else { return }
            current.append(sortedCandidates[i])
            dfs(&answer, &current, remainder - sortedCandidates[i], i)
            current.removeLast()
        }
    }
}
