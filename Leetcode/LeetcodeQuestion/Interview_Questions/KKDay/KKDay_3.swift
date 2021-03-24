//
//  KKDay_3.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/24.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class KKDay_3: Executable {
    typealias I = ([Int], Int)
    typealias O = Int
    
    func solution(_ input: ([Int], Int)) -> Int {
        let n = input.0
        let x = input.1
        
        if n.count == 0 { return -1 }
        
        var l = 0
        var r = n.count - 1
        while (l < r) {
            let m = (l + r) / 2
            if Int(n[m]) >= x {     //<-- 改為 >=
                r = m - 1           //<-- 改為 r = m
            }
            else {
                l = m               //<-- 改為 l = m + 1
            }
        }
        if Int(n[l]) == x {
            return l
        }
        
        return -1
    }
    
    func beforeRefactor(_ input: ([Int], Int)) -> Int {
        let n = input.0
        let x = input.1
        
        if n.count == 0 { return -1 }
        
        var l = 0
        var r = n.count - 1
        while (l < r) {
            let m = (l + r) / 2
            if Int(n[m]) > x {
                r = m - 1
            }
            else {
                l = m
            }
        }
        if Int(n[l]) == x {
            return l
        }
        
        return -1
    }
}
