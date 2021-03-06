//
//  executable.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/10/23.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

protocol Executable {
    associatedtype I
    associatedtype O
    
    func solution(_ input: I) -> O
}
