//
//  Q434-NumberofSegmentsinaString.swift
//  Leetcode
//
//  Created by Sean.Yue on 2021/1/4.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q434_NumberofSegmentsinaString: Executable {
    typealias I = String
    typealias O = Int
    
    func solution(_ input: String) -> Int {
        if input.isEmpty { return 0 }
        return input.split(separator: " ").count
    }
}
