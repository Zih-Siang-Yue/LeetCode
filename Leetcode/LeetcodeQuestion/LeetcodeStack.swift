//
//  LeetcodeStack.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/9/17.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

//Leetcode - Stack design
class LeetcodeStack<T: Comparable> {
    private var items: [T] = [T]()
    private var mins: [T] = [T]()
    private var maxes: [T] = [T]()
    
    public func push(_ x: T) {
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
    
    public func pop() -> T? {
        if !mins.isEmpty { self.mins.removeLast() }
        if !maxes.isEmpty { self.maxes.removeLast() }
        if !items.isEmpty { return items.removeLast() }
        return nil
    }
    
    public func getMax() -> T? {
        return maxes.last
    }
    
    public func getMin() -> T? {
        return mins.last
    }
    
    public func getFirst() -> T? {
        return items.first
    }
    
    public func getLast() -> T? {
        return items.last
    }
}
