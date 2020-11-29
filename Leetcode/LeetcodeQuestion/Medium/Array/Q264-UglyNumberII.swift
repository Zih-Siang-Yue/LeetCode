//
//  Q264-UglyNumberII.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/14.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q264_UglyNumber2: Executable {
    func execute() {
        let output: Int = nthUglyNumber(103)
        print("leetcode264 Ugly number 2 output: \(output)")
    }
    
    func nthUglyNumber(_ n: Int) -> Int {
        return solution(n)
    }
    
    func solution(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        }
        if n == 1 {
            return 1
        }
        
        var p2 = 0
        var p3 = 0
        var p5 = 0
        var dp = [Int](repeatElement(0, count: n))
        
        dp[0] = 1
        for i in 1..<n {
            
            dp[i] = min(dp[p2] * 2, min(dp[p3] * 3, dp[p5] * 5))
            print("==> p2: \(p2), p3: \(p3), p5: \(p5)")
            print("==> dp[\(i)] = \(dp[i])")
            if dp[i] == dp[p2] * 2 {
                p2 += 1
            }
            if dp[i] == dp[p3] * 3 {
                p3 += 1
            }
            if dp[i] == dp[p5] * 5 {
                p5 += 1
            }
        }
        print("==> dp[\(n-1)] = \(dp[n - 1])")
        return dp[n - 1]
    }
}

