//
//  Q22-GenerateParentheses.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/1.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q22_GenerateParentheses: Executable {
    func execute() {
        let output = generateParenthesis(3)
        print("leetcode22 Generate Parentheses output: \(output)")
    }
    
    func generateParenthesis(_ n: Int) -> [String] {
        return solution(n)
    }
    
    //Runtime: 12 ms, faster than 90.28%, Memory Usage: 14.5 MB, less than 39.68%
    func solution(_ n: Int) -> [String] {
        var ans: [String] = []
        generate(ans: &ans, cur: "", open: 0, close: 0, max: n)
        return ans
    }
    
    func generate(ans: inout [String], cur: String, open: Int, close: Int, max: Int) {
        print("==> ans: \(ans), current str: \(cur)")
        if cur.count == max * 2 {
            ans.append(cur)
            print("==> appended")
            return
        }
        
        if (open < max) {
            generate(ans: &ans, cur: cur + "(", open: open + 1, close: close, max: max)
            print("==> (")
        }
        if (close < open) {
            generate(ans: &ans, cur: cur + ")", open: open, close: close + 1, max: max)
            print("==> )")
        }
    }

}
