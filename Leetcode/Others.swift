//
//  Others.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/10/1.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

class Others {
    init() {
        pratice()
    }
    
    //MARK: Practice
    func pratice() {
        //    print99()
        //    printStar()
        //    print("reverse char: \(charReverse(str: "ABCDEFG"))")
        //    print("reverse word \(wordReverse(str: "Today is Sunday."))")
    }
    
    func print99() {
        //99乘法表
        for i in 1...9 {
            for j in 1...9 {
                print ("\(i)*\(j) = \(i*j)")
            }
        }
    }
    
    func printStar() {
        
        for i in 1...5 {
            for _ in 0..<i {                                        //*
                print("*", separator: "", terminator: "")           //**
            }                                                       //***
            print("\n", separator: "", terminator: "")              //****
        }                                                           //*****
        
        print("===== 注意！，stride的to: x <-- 此數字是不會run到的 =====")
        
        for i in stride(from: 5, to: 0, by: -1) {                   //*****
            for _ in 0..<i {                                        //****
                print("*", separator: "", terminator: "")           //***
            }                                                       //**
            print("\n", separator: "", terminator: "")              //*
        }
        
        print("================================================")
        
        for i in 1...5 {
            for _ in stride(from: 5, to: i, by: -1) {               //    *
                print(" ", separator: "", terminator:"")            //   **
            }                                                       //  ***
            for _ in 1...i {                                        // ****
                print("*", separator: "", terminator:"")            //*****
            }
            print("\n", separator: "", terminator:"")
        }
        
        print("================================================")
        
        for i in 1...5 {                                            //*****
            for _ in 1..<i {                                        // ****
                print(" ", separator: "", terminator:"")            //  ***
            }                                                       //   **
            for _ in stride(from: 5, to: i-1, by: -1) {             //    *
                print("*", separator: "", terminator:"")
            }
            print("\n", separator: "", terminator:"")
        }
    }
    
    func charReverse(str: String) -> String {
        var reverseStr: String = ""
        for i in str.reversed() {
            reverseStr += String(i)
            //        reverseStr.append(i)
        }
        return reverseStr
    }
    
    func wordReverse(str: String) -> String {
        var reverseStr: String = ""
        let splitAry = str.split(separator: " ")
        for i in splitAry.reversed() {
            reverseStr.append("\(String(i)) ")
        }
        return reverseStr.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }

}
