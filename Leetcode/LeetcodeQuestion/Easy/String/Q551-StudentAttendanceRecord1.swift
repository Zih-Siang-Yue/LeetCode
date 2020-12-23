//
//  Q551-StudentAttendanceRecord1.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q551_StudentAttendanceRecord1: Executable {
    
    typealias I = String
    typealias O = Bool
    
    //Runtime: 4 ms, faster than 75.00%, Memory Usage: 14.5 MB, less than 45.00%
    func solution(_ input: String) -> Bool {
        var lateCount = 0
        var absentCount = 0
        
        for char in input {
            
            if char == "A" {
                absentCount += 1
            }
            
            if char == "L" {
                lateCount += 1
            }
            else {
                lateCount = 0
            }
            
            if lateCount > 2 || absentCount > 1 {
                return false
            }
        }
        return true
    }
    
}
