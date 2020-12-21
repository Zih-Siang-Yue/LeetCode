//
//  Q461-HammingDistance .swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/21.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q461_HammingDistance: Executable {
    
    typealias I = (Int, Int)
    typealias O = Int

    //Runtime: 4 ms, faster than 71.43%, Memory Usage: 13.8 MB, less than 78.57%
    func solution(_ input: (Int, Int)) -> Int {
        return String((input.0 ^ input.1), radix: 2).filter{ $0 == "1" }.count
    }
    
    func solution1(_ input: (Int, Int)) -> Int {
        var xor = input.0 ^ input.1
        print("xor result: \(xor)")
        var count = 0
        while xor != 0 {
            let lsb = xor & 1
            print("lsb: \(lsb)")
            if lsb == 1 { count += 1 }
            xor >>= 1
            print("after xor: \(xor)")
        }
        return count
    }
    
    func decimalToBinary(_ n: Int) -> Int {
        var n = n
        var i = 1, binaryNum = 0
        while n != 0 {
            let remainder = n % 2
            n /= 2
            binaryNum += remainder * i
            i *= 10
        }
        return binaryNum
    }
    
    func converter(_ x: Int, _ radix: Int) -> Int? {
        return Int("\(x)", radix: radix)
        // let str = String(x, radix: radix)
    }
}
