//
//  Q47-Permutations2.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/11/6.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q47_Permutations2: Executable {
    
    typealias I = [Int]
    typealias O = [[Int]]
    
    func execute() {
        let output = permuteUnique([1,2,3])
        print("leetcode47 Permutation2 output: \(output)")
    }
    
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        return solution(nums)
    }
    
    func solution(_ input: [Int]) -> [[Int]] {
        return solution1(input)
//        return solution2(input)
    }
    
    func solution1(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var result = [[Int]]()
        var combi = [Int]()
        var isVisited = Array(repeating: false, count: nums.count)
        generatePermutations(nums, &isVisited, &result, &combi)
        return result
    }
    
    // 32ms
    func generatePermutations(_ nums: [Int], _ isVisited: inout [Bool], _ result: inout [[Int]], _ combi: inout [Int]) {
        if nums.count == combi.count {
            result.append(combi)
            return
        }
        
        for i in 0..<nums.count {
            if i > 0, !isVisited[i], !isVisited[i - 1], nums[i] == nums[i - 1] { continue }
            
            if isVisited[i] { continue }
            
            isVisited[i] = true
            combi.append(nums[i])
            generatePermutations(nums, &isVisited, &result, &combi)
            combi.removeLast()
            isVisited[i] = false
        }
    }
    
    func solution2(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty { return [] }
        if nums.count == 1 { return [nums] }
        
        var nums = nums
        var result:Set<[Int]> = []
        permuteRecursive1(&nums, 0, &result)
        return Array(result)
    }
    
    //Runtime: 176 ms, faster than 35.90%, Memory Usage: 14.6 MB, less than 8.55%
    func permuteRecursive1(_ nums: inout [Int], _ begin: Int, _ result: inout Set<[Int]> ) {
        if begin >= nums.count {
            result.insert(nums)
            return
        }
        
        for i in begin..<nums.count {
            nums.swapAt(begin, i)
            permuteRecursive1(&nums, begin+1, &result)
            nums.swapAt(begin, i)
        }
    }
}
