//
//  Q48-RotateImage.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/1.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q48_RotateImage: Executable {
    
    typealias I = [[Int]]
    typealias O = [[Int]]
        
    //Original
    func rotate(_ matrix: inout [[Int]]) {
//        var localInput = matrix
//        solution(&localInput)
    }
    
    func solution(_ input: [[Int]]) -> [[Int]] {
        var localInput = input
        solution1(&localInput)
        return localInput
    }
    
    // Runtime: 8 ms, faster than 96.70%, Memory Usage: 14.1 MB, less than 39.62%
    func solution1(_ matrix: inout [[Int]]) {
        let length = matrix.count
        // transpose matric
        for i in 0 ..< length {
            for j in i ..< length {
                let temp = matrix[j][i]
                matrix[j][i] = matrix[i][j]
                matrix[i][j] = temp
                print("==> transpose i: \(i), j: \(j), matrix: \(matrix)")
            }
        }
        
        // reverse each row
        for i in 0 ..< length {
            for j in 0 ..< length / 2 {
                let temp = matrix[i][j];
                matrix[i][j] = matrix[i][length - j - 1];
                matrix[i][length - j - 1] = temp;
                print("==> reverse i: \(i), j: \(j), length-j-1: \(length-j-1), matrix: \(matrix)")
            }
        }
        
        print("==> matrix: \(matrix)")
    }
    
    //This solution need another 2D matrix
    func solution2(_ matrix: inout [[Int]]) {
        var answers: [[Int]] = []
        var outsideIndex = 0
        let length = matrix.count
        
        while outsideIndex < length {
            var temp: [Int] = []
            
            for insideIndex in stride(from: length - 1, to: -1, by: -1) {
                var ary = matrix[insideIndex]
                temp.append(ary[outsideIndex])
            }
            answers.append(temp)
            outsideIndex += 1
        }
        matrix = answers
    }
}
