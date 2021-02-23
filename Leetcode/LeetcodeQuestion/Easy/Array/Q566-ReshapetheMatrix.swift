//
//  Q566-ReshapetheMatrix.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/2/23.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q566_ReshapetheMatrix: Executable {
    typealias I = ([[Int]], Int, Int)
    typealias O = [[Int]]
    
    //Runtime: 104 ms, faster than 100.00%
    func solution(_ input: ([[Int]], Int, Int)) -> [[Int]] {
        let matrix = input.0
        let row = input.1
        let column = input.2
        
        var flatAry: [Int] = matrix.flatMap {$0}
        if row * column > flatAry.count { return matrix } 
        
        var reshapedMatrix: [[Int]] = []
        for _ in 0..<row {
            let reshapedColumn = Array(flatAry[0..<column])
            flatAry.removeSubrange(0..<column)
            reshapedMatrix.append(reshapedColumn)
        }
        return reshapedMatrix
    }
}
