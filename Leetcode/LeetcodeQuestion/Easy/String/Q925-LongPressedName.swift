//
//  Q925-LongPressedName.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/30.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

class Q925_LongPressedName: Executable {
    
    typealias I = (String, String)
    typealias O = Bool
    
    //Runtime: 112 ms, faster than 13.51%, Memory Usage: 14.5 MB, less than 18.92%
    /*
     1. 先將兩個String 依照連續且相同的字元 做分隔
     2. 比對分隔過後的兩個ary 長度是否相同, 不同直接回false
     3. 比對分隔過後的兩個ary 裡面內容是否同字元 && 數量要小於等於
     */
    func solution(_ input: (String, String)) -> Bool {
        let name = input.0
        let typed = input.1
        
        let nameAry = sortTheSameLeetersInAGroup(name)
        let typedAry = sortTheSameLeetersInAGroup(typed)
        if nameAry.count != typedAry.count { return false }
        for index in 0 ..< typedAry.count {
            let nameStr = nameAry[index]
            let typedStr = typedAry[index]
            if nameStr.count <= typedStr.count && nameStr[nameStr.startIndex] == typedStr[typedStr.startIndex] {
                continue
            }
            else {
                return false
            }
        }
        return true
    }
    
    func sortTheSameLeetersInAGroup(_ s: String) -> [String] {
        var ary: [String] = []
        var i = 0
        
        while i < s.count {
            let letter = s[i]
            let latestStr = ary.last ?? ""
            
            if latestStr.contains(letter) {
                ary[ary.endIndex-1] = latestStr + String(letter)
                i += 1
                continue
            }
            ary.append(String(letter))
            i += 1
        }
        return ary
    }
    
    
    func fastestSolution(_ input: (String, String)) -> Bool {
        let name = input.0
        let typed = input.1
        
        var currentChar: Character = "."
        var nameCharArr: [Character] = []
        var nameArr: [Int] = []
        
        for c in name {
            if currentChar != c {
                nameCharArr.append(c)
                nameArr.append(1)
                currentChar = c
            } else {
                nameArr[nameArr.count-1] += 1
            }
        }
        
        currentChar = "."
        var typeCharArr: [Character] = []
        var typeArr: [Int] = []
        
        for c in typed {
            if currentChar != c {
                typeCharArr.append(c)
                typeArr.append(1)
                currentChar = c
            } else {
                typeArr[typeArr.count-1] += 1
            }
        }
        
        if typeCharArr != nameCharArr {
            return false
        }
        
        for i in 0..<nameArr.count {
            if typeArr[i] < nameArr[i] {
                return false
            }
        }
        
        return true
    }
}
