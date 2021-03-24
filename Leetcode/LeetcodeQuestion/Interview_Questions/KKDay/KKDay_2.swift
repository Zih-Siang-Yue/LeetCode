//
//  KKDay_2.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/3/24.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class KKDay_2: Executable {
    typealias I = Int
    typealias O = Int
    
    func solution(_ input: Int) -> Int {
        if input == 0 {
            return 1
        }
        let value: [Int] = valueOfnum(input, pre: [1])
        var count = 0
        for subValue in value {
            if subValue == 1 {
                count += 1
            }
        }
        return count
    }

    func valueOfnum(_ N: Int, pre: [Int]) -> [Int] {
        var results: [Int] = []
        var previous = pre
        var carry = 0
        var count = N
        
        while count > 0 {
            results = []
            for i in 0 ..< previous.count {
                let prevValue = i + 1 >= previous.count ? 0 : previous[i + 1]
                let result = previous[i] + prevValue + carry
                results.append(result % 10)
                carry = result / 10
            }
            results.insert(1, at: 0)
            
            if carry > 0 {
                results.append(carry)
            }
            
            count -= 1
            previous = results
        }
        
        return results
    }
}
