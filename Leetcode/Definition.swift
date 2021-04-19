//
//  Definition.swift
//  Leetcode
//
//  Created by Zih-Siang Yue on 2020/9/7.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

//Definition for a list node.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val
    }
}

public class List {
    var head: ListNode?
    var tail: ListNode?
    
    func apppendToTail(_ val: Int) {
        if tail == nil {
            tail = ListNode(val)
            head = tail
        } else {
            tail?.next = ListNode(val)
            tail = tail?.next
        }
    }
    
    func appendToHead(_ val: Int) {
        if head == nil {
            head = ListNode(val)
            tail = head
        } else {
            let temp = ListNode(val)
            head?.next = head
            head = temp
        }
    }
}

public class ListNodeG<T> {
    public var val: T
    public var next: ListNodeG<T>?
    public init(_ val: T) {
        self.val = val
        self.next = nil
    }
}

public class ListG<T> {
    var head: ListNodeG<T>?
    var tail: ListNodeG<T>?
    
    func apppendToTail(_ val: T) {
        if tail == nil {
            tail = ListNodeG(val)
            head = tail
        } else {
            tail?.next = ListNodeG(val)
            tail = tail?.next
        }
    }
    
    func appendToHead(_ val: T) {
        if head == nil {
            head = ListNodeG(val)
            tail = head
        } else {
            let temp = ListNodeG(val)
            head?.next = head
            head = temp
        }
    }
}

//Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
