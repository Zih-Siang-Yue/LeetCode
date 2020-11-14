//
//  Q62-UniquePaths.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/10.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q62_UniquePaths: Executable {
    func execute() {
        let pathOutput = uniquePaths(3, 3)
        print("leetcode62 uniquePaths output: \(pathOutput)")
    }
    
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        return solution(m, n)
    }
    
    /* 此方法適用於計算最小，最大，以及計算路徑可能... 等問題，依照不同狀況做不同條件處理
     Step1: 排除某些特定條件 == 0
     Step2: 創建二維陣列，設定初始值
     Step3: 設定起始點
     Step4: for loop 兩次(二維)，並依照不同狀況處理不同計算
     Step5: 回傳對角線的那個值
     */
    //Runtime: 4 ms, faster than 67.24%, Memory Usage: 14.1 MB, less than 45.98%
    func solution(_ m: Int, _ n: Int) -> Int {
        if m == 0 || n == 0 {
            return 0
        }
        
        var dp = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)
        dp[m-1][n-1] = 1
        print("==> dp: \(dp) ")
        
        for row in (0..<m).reversed(){
            for col in (0..<n).reversed(){
                let paths = dp[row+1][col] + dp[row][col+1]
                dp[row][col] += paths
            }
        }
        print("==> dp: \(dp) ")
        
        return dp[0][0]
    }
    
    /* 如上只是寫法不相同 */
    //Runtime: 0 ms
    func solution1(_ m: Int, _ n: Int) -> Int {
        var dp = [[Int]](repeating : [Int](repeating : 0,count : n), count : m)
        
        for i in 0 ..< n {
            dp[0][i] = 1
        }
        for i in 0 ..< m {
            dp[i][0] = 1
        }
        
        for i in 1 ..< m {
            for j in 1 ..< n {
                dp[i][j] = dp[i-1][j] + dp[i][j-1]
            }
        }
        return dp[m-1][n-1]
    }
}
