//
//  Extension_String.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/9/14.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

fileprivate extension String {
    
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }
    
    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}

extension String {
    subscript (value: Int) -> Character {
        return self[index(at: value)]
    }
}

private extension String {
    func index(at offset: Int) -> String.Index {
        return self.index(startIndex, offsetBy: offset)
    }
}
