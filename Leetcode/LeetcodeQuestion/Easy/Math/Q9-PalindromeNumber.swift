//
//  Q9-PalindromeNumber.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q9_PalindromeNumber: Executable {
    typealias I = Int
    typealias O = Bool
    
    func solution(_ input: Int) -> Bool {
        //1. 先過濾"負數" & "尾數為0的值", 因為不可能對稱 -> false
        //2. 當reverse > origin 不再進迴圈
        //3. rev = rev * 10 + origin % 10
        //4. origin /= 10
        //5. 判斷 rev == origin || rev / 10 == origin -> true
        var mutableX = input
        if mutableX < 0 || (mutableX % 10 == 0 && mutableX != 0) {
            return false
        }
        
        //Solution
        var rev: Int = 0    //12321 0, 1232 1, 123 12, 12, 123
        while mutableX > rev {
            rev = rev * 10 + mutableX % 10
            mutableX /= 10
        }
        if mutableX == rev || mutableX == rev / 10 {
            return true
        }
        return false
    }
    
    func simpleSolution(_ x: Int) -> Bool {
        let mutableX = x
        var rev: String = ""
        for i in String(mutableX).reversed() {
            rev.append(i)
        }
        
        let revX:Int? = Int(rev)
        if revX != nil, revX == mutableX {
            return true
        }
        return false
    }
    
    func otherSolution(_ x: Int) -> Bool {
        if (x < 0) { return false }
        let str = String(x)
        if str.count == 1 { return true }
        
        let half = Int(str.count / 2)
        for i in 0 ..< str.count {
            if (str[i] != str[str.count - 1 - i]) {
                return false
            }
            if (i > half) { return true }
        }
        return true
    }
}

