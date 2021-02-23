//
//  Q929-UniqueEmailAddresses.swift
//  LeetcodeTests
//
//  Created by Sean.Yue on 2021/2/22.
//  Copyright © 2021 Sean. All rights reserved.
//

import Foundation

class Q929_UniqueEmailAddresses: Executable {
    typealias I = [String]
    typealias O = Int
    
    // Runtime: 148 ms, faster than 49.57%
    func solution(_ input: [String]) -> Int {
        var set: Set<String> = []
       
        for email in input {
            let components = email.split(separator: "@")
            var localName: String = String(components[0])
            let domainName: String = String(components[1])
            if let index = localName.firstIndex(of: "+") {
                localName = String(localName[..<index])
            }
            localName = localName.replacingOccurrences(of: ".", with: "")
            set.insert("\(localName)@\(domainName)")
        }
        return set.count
    }
    
    enum ParseState {
        case parsingName
        case waitingForAt
        case waitingForEnd
    }
    
    // Runtime: 76 ms
    func numUniqueEmails(_ emails: [String]) -> Int {
        var uniqueEmails = Set<String>()
        for email in emails {
            var state = ParseState.parsingName
            var localName = ""
            var domainName = ""
            for char in email {
                switch state {
                case .parsingName:
                    if char == "+" {
                        state = .waitingForAt
                    } else if char == "@" {
                        state = .waitingForEnd
                    } else if char != "." {
                        localName.append(char)
                    }
                    break
                case .waitingForAt:
                    if char == "@" {
                        state = .waitingForEnd
                    }
                    break
                case .waitingForEnd:
                    domainName.append(char)
                    break
                }
            }
            
            // let emailComponents = email.components(separatedBy: "@")
            // guard emailComponents.count == 2 else {
            //     continue
            // }
            // let localName = getResolvedLocalName(fromLocalName: emailComponents[0])
            // let domainName = emailComponents[1]
            uniqueEmails.insert("\(localName)@\(domainName)")
            
        }
        return uniqueEmails.count
    }
}
