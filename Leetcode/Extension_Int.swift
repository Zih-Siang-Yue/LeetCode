//
//  Extension_Int.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/9/29.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

extension Int {
    func decTobin() -> String {
        var num = self
        var str = ""
        while num > 0 {
            str = "\(num % 2)" + str
            num /= 2
        }
        return str
    }
}
