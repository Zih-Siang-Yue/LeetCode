//
//  Q12-IntegertoRoman.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/5/3.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q12_IntegertoRoman: Executable {
    typealias I = Int
    typealias O = String
    
    func solution(_ input: Int) -> String {
        let M:[String] = ["", "M", "MM", "MMM"];
        let C:[String] = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
        let X:[String] = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
        let I:[String] = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];
        return M[input/1000] + C[(input%1000)/100] + X[(input%100)/10] + I[input%10];
    }
}
