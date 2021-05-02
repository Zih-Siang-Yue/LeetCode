//
//  Q7-ReverseInteger .swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q7_ReverseInteger: Executable {
    typealias I = Int
    typealias O = Int
    
    func solution(_ input: Int) -> Int {
        let absolute = abs(input)
        let str = String(absolute)
        let reversedStr = String(str.reversed())
        let int = Int32(reversedStr)
        
        guard var result = int else { return 0 }
        if input < 0 { result *= -1 }
        
        return Int(result)
    }
    
    func fatestSolution(_ x: Int) -> Int {
        var unsignedX = abs(x)
        var reverse = 0
        while unsignedX > 0 {
            let lastDigit = unsignedX % 10
            unsignedX /= 10
            reverse = reverse * 10 + lastDigit
            if reverse > Int32.max {
                return 0
            }
        }
        if x < 0 {
            return -reverse
        }
        return reverse
    }
}
