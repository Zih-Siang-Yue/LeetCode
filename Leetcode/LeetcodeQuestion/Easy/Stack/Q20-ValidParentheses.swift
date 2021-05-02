//
//  Q20-ValidParentheses.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2021/5/2.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q20_ValidParentheses: Executable {
    typealias I = String
    typealias O = Bool
    
    func solution(_ input: String) -> Bool {
        //1. new一個dic 反向存放符號(key 為右邊符號, value為左邊符號
        //2. new一個stack 存放左邊符號
        //3. for loop str
        //4. 判斷 dic[i] 是否為nil, nil -> 為左邊符號,直接放進stack,
        //5. 不是nil 為右邊符號, 需要pop stack 最後一位(topItem) 比較 topItem != dic[i] -> 回傳false 失敗 為不對稱
        //6. 若最後都對稱 回傳 判斷stack裡面是否為空(因為前面若對稱應該會pop乾淨)
        let dic:[Character:Character] = [")": "(",      //012345
            "]": "[",
            "}": "{"]
        
        var stack = [Character]()   //皆是放左邊
        for i in input {
            if dic[i] != nil {      //會 == nil, 都是 [ ( {
                let topItem = stack.popLast() ?? "#"
                if dic[i] != topItem {
                    return false
                }
            }
            else {
                stack.append(i)
            }
        }
        return stack.isEmpty
    }
}
