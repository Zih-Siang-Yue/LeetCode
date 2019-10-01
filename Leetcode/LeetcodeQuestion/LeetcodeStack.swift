//
//  LeetcodeStack.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/9/17.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

//Leetcode - Stack design
class LeetcodeStack {
    private var items: [Double] = [Double]()
    private var mins: [Double] = [Double]()
    private var maxes: [Double] = [Double]()
    
    public func push(_ x: Double) {
        items.append(x)
        
        if let min = mins.last {
            min > x ? mins.append(x) : mins.append(min)
        } else {
            mins.append(x)
        }
        
        if let max = maxes.last {
            max < x ? maxes.append(x) : maxes.append(max)
        }
        else {
            maxes.append(x)
        }
    }
    
    public func pop(_ x: Double) {
        if !items.isEmpty { items.removeLast() }
        if !mins.isEmpty { self.mins.removeLast() }
        if !maxes.isEmpty { self.maxes.removeLast() }
    }
    
    public func getMax() -> Double? {
        return maxes.last
    }
    
    public func getMin() -> Double? {
        return mins.last
    }
    
    public func getFirst() -> Double? {
        return items.first
    }
    
    public func getLast() -> Double? {
        return items.last
    }
}
