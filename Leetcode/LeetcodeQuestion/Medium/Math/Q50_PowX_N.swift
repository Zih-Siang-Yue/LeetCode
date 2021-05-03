//
//  Q50_PowX_N.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q50_PowX_N: Executable {
    typealias I = (Double, Int)
    typealias O = Double
    
    func solution(_ input: (Double, Int)) -> Double {
        //1. 利用遞迴方式撰寫
        //2. if n == 0 (任何 x 的 0次方皆為1) -> 回傳1
        //3. 先判斷, 若次方數 < 0 -> x 變為 1/x, n = -n
        //4. 判斷次方是否可被2整除, 若可以 重新呼叫自己 pow(x*x, n/2), 若不行 pow(x*x, n/2) * x
        let x = input.0
        let n = input.1
        
        if n == 0 {
            return 1
        }
        
        var mX = x
        var mN = n
        if n < 0 {
            mX = 1 / x
            mN = -n
        }
        
        return mN % 2 == 0 ? solution((mX * mX, mN / 2)) : solution((mX * mX, mN / 2)) * mX
    }
}
