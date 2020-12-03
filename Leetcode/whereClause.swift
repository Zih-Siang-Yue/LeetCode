//
//  whereClause.swift
//  Leetcode
//
//  Created by Sean.Yue on 2020/12/3.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

enum ResponseError: Error {
    case HTTP(Int)
}

protocol CanBeTested {
    var sut: NSObject? { get set }
}

class whereClause: NSObject, CanBeTested {
    var sut: NSObject?
    
    func genericFunc<S>(str: S) where S: ExpressibleByStringLiteral {
        print("!!!Str: \(str)")
    }
    
    func whereIndetermine() {
        var abc = 123
        if let sut = sut, abc == 122 {
            //...
        }
        
        guard let sut = sut, abc == 122 else {
            return
        }
    }
    
    func whereInForLoop() {
        let arr = [1,2,3,4]
        let dict = [1: "one", 2: "two"]
        for num in arr where dict[num] != nil {
            
        }
        
        for num in arr where num % 2 == 0 {
            
        }
    }
    
    func whereInSwitchCase() {
        var value = (1,2)
        switch value {
        case let (x, y) where x == 1:
            break
        case let (x, y) where x / 5 == 1:
            break
        default:
            break
        }
    }
    
    func whereInDoTryCatch() {
        do {
            try errorProne()
        } catch ResponseError.HTTP(let code) where code >= 400 {
            
        } catch {
            
        }
    }
    
    func errorProne() throws {
        throw ResponseError.HTTP(404)
    }
    
    func testInWhile() {
        var mutableArr: [Int]? = []
        while let arr = mutableArr, arr.count < 5 {
            mutableArr?.append(0) // [0,0,0,0,0]
        }
    }
}

extension CanBeTested where Self: NSObject {
    func testVerification() {
        
    }
}
