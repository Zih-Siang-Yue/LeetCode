//
//  Q11_ContainerWithMostWater.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/10/27.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation
class Q11_ContainerWithMostWater: Executable {
    
    func execute() {
        //[1,1]
        //[4,3,2,1,4]
        //[1,8,6,2,5,4,8,3,7]
        let output:Int = maxArea([1,8,6,2,5,4,8,3,7])
        print("leetcode11 output: \(output)")
    }
    
    func maxArea(_ height: [Int]) -> Int {
        return solution(height)
    }
    
    //Runtime: 144 ms, faster than 43.85%, Memory Usage: 14.5 MB, less than 39.87% 
    func solution(_ height: [Int]) -> Int {
        if height.isEmpty { return 0 }
        
        var maxValue: Int = 0
        var low: Int = 0
        var high: Int = height.count - 1
        
        while low < high {
            let xValue = high - low
            let yValue = min(height[low], height[high])
            maxValue = max(xValue * yValue, maxValue)
            
            if height[low] < height[high] {
                low += 1
                continue
            }
            high -= 1
        }
        return maxValue
    }
}
