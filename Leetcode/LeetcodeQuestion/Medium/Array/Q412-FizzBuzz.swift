//
//  Q412-FizzBuzz.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/10.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q412_FizzBuzz: Executable {
    func execute() {
        let output = fizzBuzz(15)
        print("leetcode412 FizzBuzz output: \(output)")
    }
    
    func fizzBuzz(_ n: Int) -> [String] {
        return solution(n)
    }
    
    func solution(_ n: Int) -> [String] {
        var answer: [String] = []
        for i in 1 ... n {
            if i % 3 == 0, i % 5 == 0 {
                answer.append("FizzBuzz")
            }
            else if i % 3 == 0 {
                answer.append("Fizz")
            }
            else if i % 5 == 0 {
                answer.append("Buzz")
            }
            else {
                answer.append("\(i)")
            }
        }
        return answer
    }
}
