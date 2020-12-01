//
//  Testable.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2020/12/1.
//  Copyright © 2020 Sean. All rights reserved.
//

import Foundation

protocol Testable  {
    associatedtype I
    associatedtype O
    
    var input: I { get set }    //TODO:(Sean) 不能用 let
    var output: O { get set }
}

protocol Verifiable {
    associatedtype I
    associatedtype O

    func verify(with quesNum: Int, desc: String, solution: (I) -> (O))    //TODO:(Sean) 考慮改成 return result(封裝過後的結果, 可能包含相關資訊 bool, errMsg, etc.)
}


/* 用於無效化 初始 init
@available(*, unavailable, message: "only init(input:output:)") init() {}
 
 or
 
init() {
    fatalError("Never perform")
}
*/

struct TestCase<InputType, OutputType: Equatable>: Testable, Verifiable {
    
    typealias I = InputType
    typealias O = OutputType
    
    var input: InputType
    var output: OutputType
    
    func verify(with quesNum: Int = -1, desc: String = "", solution: (I) -> (O)) {
        let result = solution(input)
        let prefix = quesNum != -1 ? "Q\(quesNum)" : ""
        let text = result == output ? "[\(prefix)] testing passed" : "[\(prefix)] testing failed: \(desc)"
        print(input, text)
    }
}

struct TestGroup<InputType, OutputType: Equatable>: Verifiable {

    typealias I = InputType
    typealias O = OutputType

    var testCases: [TestCase<InputType, OutputType>]
    
    func verify(with quesNum: Int = -1, desc: String = "", solution: (I) -> (O)) {
        testCases.forEach { (testCase) in
            let result = solution(testCase.input)
            let prefix = quesNum != -1 ? "Q\(quesNum)" : ""
            let text = result == testCase.output ? "[\(prefix)] testing passed" : "[\(prefix)] testing failed: \(desc)"
            print(testCase.input, text)
        }
    }
}
