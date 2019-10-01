//
//  ClosurePractice.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/10/1.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

class ClosurePractice {
    init() {
        cloPractice()
    }
    
    //MARK: Closure practice
    func cloPractice() {
        //基本: 參數寫完整並宣告型別, 回傳寫return
        closure { (a:String) -> String in
            return a + "bc"
        }
        
        //偷懶1: 不寫參數型別, 直接使用參數名稱, 並且寫回傳 return
        closure { (a) -> String in
            return a + "bcd"
        }
        
        //偷懶2: 不寫參數型別, 且不寫return(有條件, 如偷懶4), 此種寫法則不受限
        closure { (a) -> String in
            "bcde"
        }
        
        //偷懶3: 不寫參數名稱 & 型別, 直接以$0 代表第一個變數名, $1代表第二個.. 以此類推, 連in都省了
        closure { return $0 + "bcdef" }
        
        //偷懶4: 不寫return有條件, 如果沒有宣告參數, 而使用$0, $1 代替參數名則要"全部用到" 才能不寫
        closure { $0 + "bcdefg" }
        
        //報錯, 因為參數未全部使用到
        //    closure { "bcdefgh" }
    }
    
    //Closure
    func closure(_ clo:(String) -> String) -> Void {
        print("closure return str: \(clo("a"))")
    }
    
}
