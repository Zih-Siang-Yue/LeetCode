//
//  YahooInterview.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/9/17.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

class YahooInterview {
    init() {
        execute()
    }
    
    func execute() {
        //Yahoo 1
        let isGoBack = goBack("UDDULRRL")
        print("yahoo1 output: \(isGoBack)")
        
        //Yahoo 2
        let sumDigit = digitsSum("13579")
        print("yahoo2 output: \(sumDigit)")
        
        //Yahoo 3
        let sumA = sumAry(ary: [1, 2, 3, 6, 7, 10, 22])
        print("yahoo3 output: \(sumA)")
    }
    
    //Yahoo 1
    func goBack(_ str: String) -> Bool {
        if str.count == 0 { return true }
        var r = 0
        var l = 0
        var d = 0
        var u = 0
        
        for i in str {
            if i == "R" {
                r += 1
            }
            else if i == "L" {
                l += 1
            }
            else if i == "D" {
                d += 1
            }
            else if i == "U" {
                u += 1
            }
        }
        
        return r - l  == 0 && d - u == 0
    }
    
    //Yahoo 2
    func digitsSum(_ str: String) -> Double {
        if str.count == 0 {
            return 0
        }
        else if str.count == 1 {
            return Double(str) ?? 0
        }
        else {
            let mid = str.count / 2
            let range1 = str.startIndex ..< str.index(str.startIndex, offsetBy: mid)
            let range2 = str.index(str.startIndex, offsetBy: mid)...
            return digitsSum(String(str[range1])) + digitsSum(String(str[range2]))
        }
    }
    
    //Yahoo 3
    func sumAry(ary: [Int]) -> Int {
        var sum = 0
        for i in ary {
            sum += i
        }
        return sum
    }
}
