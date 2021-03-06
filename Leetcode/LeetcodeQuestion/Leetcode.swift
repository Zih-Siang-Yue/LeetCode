//
//  Leetcode.swift
//  Leetcode
//
//  Created by Sean.Yue on 2019/9/17.
//  Copyright © 2019 Sean. All rights reserved.
//

import Foundation

class Leetcode {
    //MARK: The ary for leetcode 202
    var haveAppeared: [Int: Int] = [:]

    init() {
        execute()
    }
    
    func execute() {
        //0.1
        let duplicates1 = removeDuplicates([1, 2, 2, 2, 3, 3, 4])
        print("leetcode0.1 output: \(duplicates1)")
        
        //0.2
        let duplicates2 = removeDuplicates2([1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5, 6])
        print("leetcode0.2 output: \(duplicates2)")
        
        //0.3
        let plusOneResult = plusOne([9, 8, 9])
        print("leetcode0.3 output: \(plusOneResult)")
        
        //0.6
        let mergeSorted = mergeSortedArys([1, 2, 4, 8, 16], [2, 2, 4, 6, 7, 10])
        print("leetcode0.6: output: \(mergeSorted)")
        
        //0.8
        let sum3 = sum3Number([2, -7, 10, 5, -4, 8, 3])
        print("leetcode0.8: output: \(sum3)")
        
        //0.9
        let closest3 = sum3Closest(nums: [-2, 6, 0, 9, -4, 2, 7], target: 20)
        print("leetcode0.9 output: \(closest3)")
        
        //5
        let longestPalind = longestPalindrome("bb")
        print("leetcode5 output: \(longestPalind)")
                                
        //53
        let masSubs = maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
        print("leetcode53 output: \(masSubs)")
        
        //67
        let binaryAc = addBinary("11", "1")
        print("leetcode67 output: \(binaryAc)")
        
        //69
        let square = mySqrt(49)
        print("leetcode69 output: \(square)")
        
        //70
        let stair = climbStairs(8)
        print("leetcode70 output: \(stair)")
        
        //88
        var sortedAry = [1, 2, 3, 0, 0 ,0]
        _ = merge(&sortedAry, 3, [2, 5, 6], 3)
        
        //121
        let profit1 = maxProfit1([7, 1, 5, 3, 6, 4])
        print("leetcode121 output: \(profit1)")
        
        //122
        let profit2 = maxProfit2([1, 3, 5, 3, 7, 10, 12, 14, 15])
        print("leetcode122 output: \(profit2)")
        
        //125
        let palindStr = isPalindrome("A man, a plan, a canal: Panama")
        print("leetcode125 output: \(palindStr)")
        
        //136
        let single = singleNumber([4, 1, 2, 1, 2])
        print("leetcode136 output: \(single)")
        
        //169
        let major = majorityElement([3, 2, 3])
        print("leetcode169 output: \(major)")
        
        //171
        let excelColumn = titleToNumber("AAA")
        print("leetcode171 output: \(excelColumn)")
        
        //189
        var aryWouldBeRotated = [1, 2, 3, 4, 5, 6, 7]
        _ = rotate(&aryWouldBeRotated, 3)
        print("leetcode189 output: \(aryWouldBeRotated)")
        
        //191
        let oneBits = hammingWeight(11)
        print("leetcode191 output: \(oneBits)")
        
        //198
        let houseRobber = rob([2, 3, 2])
        print("leetcode198 output: \(houseRobber)")
        
        //202
        let happyNum = isHappy(37)
        print("leetcode202 output: \(happyNum)")
        
        //204
        let primes = countPrimes(10)
        print("leetcode204 output: \(primes)")
        
        //205
        let isIsomor = isIsomorphic("aa", "ab")
        print("leetcode205 output: \(isIsomor)")
        
        //217
        let duplicateOrNot = containsDuplicate([1, 2, 3, 1])
        print("leetcode217 output: \(duplicateOrNot)")
        
        //234
        let listNode1 = ListNode(1)
        let listNode2 = ListNode(2)
        let listNode3 = ListNode(-3)
        let listNode4 = ListNode(-3)
        let listNode5 = ListNode(2)
        let listNode6 = ListNode(1)
        listNode1.next = listNode2
        listNode2.next = listNode3
        listNode3.next = listNode4
        listNode4.next = listNode5
        listNode5.next = listNode6
        let listNodePalindrome = isPalindrome(listNode1)
        print("leetcode234 output: \(listNodePalindrome)")
        
        //242
        let anagram = isAnagram("rat", "car")
        print("leetcode242 output: \(anagram)")
        
        //258
        let digits = addDigits(20)
        print("leetcode258 ouput: \(digits)")
        
        //263
        let isUglyNum = isUgly(14)
        print("leetcode263 output: \(isUglyNum)")
        
        //268
        let missingNo = missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1])
        print("leetcode268 output: \(missingNo)")
        
        //278
        let badVersion = firstBadVersion(5) ?? 1
        print("leetcode278 output: \(badVersion)")
        
        //283
        var unremoveZeros = [1, 0]
        moveZeroes(&unremoveZeros)
        print("leetcode283 output: \(unremoveZeros)")
        
        //290
        let isConformWordPattern = wordPattern("abba", "dog cat cat dog")
        print("leetcode290 output: \(isConformWordPattern)")
        
        //342
        let theFlagOfIsPowerOfFour = isPowerOfFour(16)
        print("leetcode 342 output: \(theFlagOfIsPowerOfFour)")
        
        //349
        let intersect1 = intersection([1, 2, 2, 1], [2, 2])
        print("leetcode349 output: \(intersect1)")
        
        //350
        let intersect2 = intersect([1, 2, 2, 1], [2, 2])
        print("leetcode349 output: \(intersect2)")
        
        //387
        let firstIndexOfUniqChar = firstUniqCharSolution1("leetcode")
        print("leetcode387 output: \(firstIndexOfUniqChar)")
        
        //389
        let diff = findTheDifference("a", "aa")
        print("leetcode389 output: \(diff)")
        
        //448
        let disappears = findDisappearedNumbers([4, 3, 2, 7, 8, 2, 3, 1])
        print("leetcode448 output: \(disappears)")
        
        //724
        let pivotI = pivotIndex([-1, -1, -1, 0, 1, 1])//([1, 7, 3, 6, 5, 6])
        print("leetcode724 output: \(pivotI)")
        
        //746
        let minStep = minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]) //[10, 15, 20]
        print("leetcode746 output: \(minStep)")
        
        //771
        let num = numJewelsInStones("aA", "aAAbbbb")
        print("leetcod771 output: \(num)")
        
        //970
        let powerfulNum = powerfulIntegers(2, 1, 10)
        print("leetcode970 output: \(powerfulNum)")
        
        //1450
        let students = busyStudent([2, 3, 6], [4, 3, 8], 7)
        print("leetcode1450 output: \(students)")

        //factors
        let factorList = factors(of: 16)
        print("all factors: \(factorList)")

    }
    
    //Leetcode - 0.1 移除重複的值 remove duplicates
    func removeDuplicates(_ ary:[Int]) -> [Int] {
        //0. 此演算法建立在已排序的ary裡
        //1. 準備兩個變數 i(目前的索引值), j(目前已被替換的索引值)
        //2. for i in ary 一一掃出ary的值, 若i的值 不等於前面的j 就將不一樣的值塞入j+1索引值裡
        //3. 掃完之後回傳j之前的陣列範圍
        if ary.count == 0 { return [Int]() }
        
        var mAry = ary
        var j = 0
        for i in 1..<mAry.count {
            if mAry[j] != mAry[i] {
                j += 1
                mAry[j] = mAry[i]
            }
        }
        return Array(mAry[...j])
    }
    
    //Leetcode - 0.2 移除重複的值(最多能包含兩個) remove duplicates(Two)
    func removeDuplicates2(_ ary:[Int]) -> [Int] {  // [1, 1, 1, 2, 2, 3, 3, 3, 4, 4, 5, 6]
        if ary.count == 0 { return [Int]() }
        
        var mAry = ary
        var j = 0
        var num = 0
        for i in 1..<mAry.count {
            if mAry[j] == mAry[i] {
                num += 1
                if num < 2 {
                    j += 1
                    mAry[j] = mAry[i]
                }
            }
            else {
                j += 1
                mAry[j] = mAry[i]
                num = 0
            }
        }
        
        return Array(mAry[...j])
    }
    
    //Leetcode - 0.3 陣列裡的值 +1, 並往前加總
    func plusOne(digits ary:[Int]) -> [Int] {
        if ary.count == 0 { return [Int]() }
        
        var mAry = ary
        var sum = 0
        var one = 1
        for i in stride(from: ary.count - 1, to: -1, by: -1) {
            sum = one + mAry[i]
            one = sum / 10
            mAry[i] = sum % 10
        }
        
        if one > 0 {
            mAry.insert(one, at: 0)
        }
        
        return mAry
    }
    
    //Leetcode 0.5 Pascal's Triangle II
    
    //Leetcode 0.6 Merge Sorted Ary
    func mergeSortedArys(_ aryA: [Int], _ aryB: [Int]) -> [Int] {
        //利用合併排序法的 合併步驟來完成,(合併排序法則需要加入"inout" 修飾字, 且要先做分割的動作)
        //1. 準備一個aIndex, bIndex, mergeIndex, 和一個空的ary
        //2. 用while 進行迴圈，並比較aryA, aryB的值哪個比較小 放進ary
        //3. 要記得 除了 (aIndex < aryA.count && bIndex < aryB.count)條件外, 還要分開個寫,避免ary 不同數量之情況
        //4. 回傳mergeAry
        var mergeAry = [Int]()
        
        var aIndex = 0
        var bIndex = 0
        var mergeIndex = 0
        
        while aIndex < aryA.count && bIndex < aryB.count {
            if aryA[aIndex] < aryB[bIndex] {
                mergeAry.insert(aryA[aIndex], at: mergeIndex)
                aIndex += 1
            }
            else {
                mergeAry.insert(aryB[bIndex], at: mergeIndex)
                bIndex += 1
            }
            
            mergeIndex += 1
        }
        
        while aIndex < aryA.count {
            mergeAry.insert(aryA[aIndex], at: mergeIndex)
            aIndex += 1
            mergeIndex += 1
        }
        
        while bIndex < aryB.count {
            mergeAry.insert(aryB[bIndex], at: mergeIndex)
            bIndex += 1
            mergeIndex += 1
        }
        
        return mergeAry
    }
    
    //Leetcode - 0.7, 如 Leet code -1
    //func sum2(_ nums:[Int], _ target: Int) -> [Int] {
    //
    //}
    
    //Leetcode - 0.8, 給一個ary, 要將3個數字加總之後 = 0, 回傳3個數字的索引值, 且需為升冪排序
    func sum3Number(_ nums:[Int]) -> [Int] {    // [2, -7, 10, 5, -4, -8, 3, 1] -> 2 + (-7) + 5 = 0
        //1. 先排序ary
        //2. 將排序過後的ary 掃出 並將 0 - value 當作key, index當作value 存入dic(在下一個for loop)
        //3. 再用一個for loop 掃出剩餘的值, 比對是否為剛剛減掉的
        if nums.count < 3 { return [0] }
        
        let sortedAry = nums.sorted { (a, b) -> Bool in
            return a < b
        }
        print("sortedAry in leetcode0.8: \(sortedAry)")
        
        var dic = [Int:Int]()
        for (i, value) in sortedAry.enumerated() {
            let twoNumberSum = 0 - value    // 0 - 2 = -2
            
            for j in i+1 ..< sortedAry.count {  //TODO: 看是否需要全部ary跑 / 只要跑i 之後開始
                let key = twoNumberSum - sortedAry[j]   // -2 - (-7) = 5, // - 2 - 5 = -7
                if dic[key] != nil {
                    return [i, dic[key]!, j]
                }
                else {
                    dic[sortedAry[j]] = j
                }
            }
        }
        return [0]
    }
    
    //Leetcode - 0.9,給一個ary和一個target, 求出哪3個數字加總之後最接近target的值
    func sum3Closest(nums: [Int], target: Int) -> Int { //[-2, 6, 0, 9, -4, 2, 7], target 20
        //1. 須先將ary 排序過
        //2. 準備3個指標 i, j, k, 和一個暫時加總得值temp 用來存最接近的值已作回傳, 和一個距離變數distance 用來記錄最接近的距離
        //3. 先固定兩個指標，並變動另一個指標，來觀看是否最接近target
        var mNums = nums
        mNums.sort { (a, b) -> Bool in
            return a < b ? true : false
        }
        
        var distance:Int = Int(INT_MAX)
        var temp = 0
        
        for i in 0 ..< nums.count-2 {
            
            var j = i + 1
            var k = nums.count - 1
            
            while j < k {
                let value = mNums[i] + mNums[j] + mNums[k]
                if value > target {         //若加總(value)比target大, 則k 慢慢往左遞減
                    if value - target < distance {  //若距離比之前紀錄的還小, 就更新距離(distance)跟最接近值(temp)
                        distance = value - target
                        temp = value
                    }
                    k -= 1
                }
                else if value < target {    //若加總(value)比target小, 則j 慢慢往右遞增
                    if target - value < distance {
                        distance = target - value
                        temp = value
                    }
                    j += 1
                }
                else {
                    return value
                }
            }
        }
        return temp
    }
    
    //Leetcode - 0.10 求rotated 過的ary 最小值
    func minimumInRotatedSortedAry(ary: [Int]) -> Int {     // [5, 6, 7, 1, 2, 3, 4]
        if ary.count == 0 {
            return 0
        }
        else if ary.count == 1 {
            return ary[0]
        }
        else if ary.count == 2 {
            return min(ary[0], ary[1])
        }
        
        var start = 0                   // 0, 2,
        var stop = ary.count - 1        // 6, 4, 3
        while start < stop - 1 {        // 0 < 5, 2 < 5
            if ary[start] < ary[stop] {
                return ary[start]
            }
            let mid = start + (stop - start) / 2    // 2, 4, 3
            if ary[mid] > ary[start] {              //ary[2] > ary[0]  -> true
                start = mid
            }
            else if ary[mid] < ary[start] {
                stop = mid
            }
        }
        return min(ary[start], ary[stop])
    }
    
    
    //Leetcode - 5
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 {
            return ""
        }
        else if s.count == 1 {
            return s
        }
        else if s.count > 1000 {
            return ""
        }
        
        var longestStr = ""
        for i in 0..<s.count {
            for j in i+1 ... s.count {
                let range = s.index(s.startIndex, offsetBy: i) ..< s.index(s.startIndex, offsetBy: j)
                let subStr = String(s[range])
                if isPalindrome(str:subStr) && subStr.count >= longestStr.count {
                    longestStr = subStr
                }
            }
        }
        return longestStr
    }
    
    func isPalindrome(str: String) -> Bool {
        let rStr = String(str.reversed())
        return str == rStr ? true : false
    }
    
    //Leetcode - 53 Maximum Subarray
    /* 解題思維:
     主要需要兩個變數: 1. 記錄ary 裡面的值加總的總和(localMax) 2. 過程途中最大的值(soFarMax)
     注意: localMax 若 < 0, 則使用0 做加總(以此次重新開始再加總)
          soFarMax 則與 localMax 取最大值即可
     */
    func maxSubArray(_ nums: [Int]) -> Int {        //[1, 2, -7, -3, 4, 7, 0, -3]
        return maxSubArraySolution1(nums)
        return maxSubArraySolution2(nums)
    }
    
    func maxSubArraySolution1(_ nums: [Int]) -> Int {        //[1, 2, -7, -3, 4, 7, 0, -3]
        //Runtime: 28 ms, faster than 99.80%
        let length = nums.count
        if (length == 0) { return 0 }
        if (length == 1) { return nums[0] }
        
        var localMax = 0
        var soFarMax = Int.min
        for i in 0..<length {
            localMax = nums[i] + max(localMax,0);       //1, 3, -4, -3, 4, 11, 11, 8    <-- localMax 若為負數, 則歸零
            soFarMax = max(soFarMax,localMax)           //1, 3, 3,  3, 4, 11, 11, 11    <-- 保留最大
        }
        return soFarMax
    }

    func maxSubArraySolution2(_ nums: [Int]) -> Int {
        //Runtime: 32 ms
        if nums.isEmpty { return 0 }
        if nums.count == 1 { return nums.first! }
        
        var sum = nums.first!
        var maxValue = nums.first!
        for i in 1 ..< nums.count {
            let v = nums[i]
            sum = max(sum + v, v)
            maxValue = max(sum, maxValue)
        }
        return maxValue
    }
    
    //Leetcode - 58 Length of Last Word
    func lengthOfLastWord(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        let ary = s.split(separator: " ")
        return ary.last?.count ?? 0
    }
    
    //Leetcode - 66 plus one
    func plusOne(_ digits: [Int]) -> [Int] {//若過號 要變成 單位數
        if digits.count == 0 { return [Int]() }
        
        var ary = digits
        var one = 1
        var sum = 0
        for i in stride(from: ary.count - 1, to: -1, by: -1) {
            sum = one + digits[i]
            one = sum / 10
            ary[i] = sum % 10
        }
        if one > 1 { ary.insert(one, at: 0) }
        return ary
    }
    
    //Leetcode - 67 Add Binary
    func addBinary(_ a: String, _ b: String) -> String {
        let mA = Array(a)
        let mB = Array(b)
        
        var aIndex = mA.count - 1
        var bIndex = mB.count - 1
        var sum = 0
        var rev = ""
        
        while aIndex >= 0 || bIndex >= 0 || sum == 1 {
            sum += aIndex >= 0 ? Int(String(mA[aIndex]))! : 0
            sum += bIndex >= 0 ? Int(String(mB[bIndex]))! : 0
            rev = String(sum % 2) + rev
            sum /= 2
            aIndex -= 1
            bIndex -= 1
        }
        return rev
    }
    
    //Leetcode - 69 Sqrt(x)
    func mySqrt(_ x: Int) -> Int {
        //    return Int(Double(x).squareRoot())
        guard x != 0 else { return 0 }
        guard x > 3 else { return 1 }
        
        var low = 2
        var high = x / 2
        print("origin low: \(low), high: \(high)")
        while low <= high {
            let middle = (low + high) / 2       //(2 + x /2) / 2
            print("middle: \(middle)")
            
            if middle == x / middle  {
                return middle
            } else if middle * middle < x {
                low = middle + 1
            } else {
                high = middle - 1
            }
        }
        
        return high
    }
    
    //Leetcode - 70 Climbing Stairs(費氏數列變形，只是他從index 1,2開始): n為top, 每次只能走1 or 2步, 有多少種組合可以到達top
    func climbStairs(_ n: Int) -> Int {
        if n == 0 {
            return 0
        }
        else if n == 1 {
            return 1
        }
        else if n == 2 {
            return 2
        }
        var dic:[Int:Int] = [1:1, 2:2]
        for i in 3...n {
            dic[i] = dic[i-1]! + dic[i-2]!
        }
        return dic[n]!
        
        //return climbing(0, n)   //Time Limited
    }
    
    func climbing(_ i: Int, _ n: Int) -> Int {  //climb stairs formula
        if i > n {
            return 0
        }
        else if i == n {
            return 1
        }
        return climbing(i+1, n) + climbing(i+2, n)
    }
    
    //Leetcode - 83 Remove Duplicates from Sorted List
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        while current != nil && current?.next != nil {
            if current?.val == current?.next?.val {
                current?.next = current?.next?.next
            }
            else {
                current = current?.next
            }
        }
        return head     //注意： 這裡是return head
    }
    
    
    //Leetcode - 88 Merge Sorted Array
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var aIndex = m - 1
        var bIndex = n - 1
        var mIndex = nums1.count - 1
        while aIndex >= 0 && bIndex >= 0 {
            if nums1[aIndex] < nums2[bIndex] {
                nums1[mIndex] = nums2[bIndex]
                bIndex -= 1
            }
            else {
                nums1[mIndex] = nums1[aIndex]
                aIndex -= 1
            }
            mIndex -= 1
        }
        
        while aIndex >= 0 {
            nums1[mIndex] = nums1[aIndex]
            aIndex -= 1
            mIndex -= 1
        }
        
        while bIndex >= 0 {
            nums1[mIndex] = nums2[bIndex]
            bIndex -= 1
            mIndex -= 1
        }
    }
    
    //Leetcode 101 Symmetric Tree
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirrot(root, root)
    }
    
    private func isMirrot(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
        if t1 == nil && t2 == nil { return true }
        if t1 == nil || t2 == nil { return false }
        return t1?.val == t2?.val && isMirrot(t1?.left, t2?.right) && isMirrot(t2?.left, t1?.right)
    }
    
    //Leetcode 104 Maximum Depth of Binary Tree
    func maxDepth(_ root: TreeNode?) -> Int {
        /**
         Step1: 先判斷本身(root) 是否為nil, 若為nil 則代表沒有這一層 return 0
         Step2: 開始往下尋找(left or right), 各別往下尋找一層需要加上1
         Step3: 遞迴之後看是左邊的階層比較深(depth), 還是右邊的, 用max 函數找到最大即可
         */
        guard let root = root else { return 0 }
        return max(maxDepth(root.left) + 1, maxDepth(root.right) + 1)
    }
    
    //Leetcode - 118 Pascal's Triangle
//    func generate(_ numRows: Int) -> [[Int]] {
//        var twoDimensions = [[Int]]()
//        for i in 0...numRows {
//            let ary = pow((a + b), numRows)
//            twoDimensions.append(ary)
//        }
//        return twoDimensions
//    }
    
    //Leetcode - 121 Best Time to Buy and Sell Stock
    func maxProfit1(_ prices: [Int]) -> Int {
        if prices.count <= 1 { return 0 }
        
        var lowest: Int = prices.first!
        var maxProfit: Int = 0
        
        for price in prices {
            lowest = min(lowest, price)
            maxProfit = max(maxProfit, price - lowest)
        }
        return maxProfit
    }
    
    //Leetcode - 122 Best Time to Buy and Sell Stock II
    func maxProfit2(_ prices: [Int]) -> Int {       //[7,1,5,3,6,4]
        /* Approach 1
         Runtime 36ms
         Memory 21MB
         */
        if prices.count <= 1 { return 0 }

        var maxProfit: Int = 0
        for i in 1..<prices.count {
            maxProfit += max(prices[i] - prices[i - 1], 0)
        }
        return maxProfit
        
        /* Approach 2
                 guard prices.count > 0 else { return 0 }
        
        var profit = 0
        var minPrice = Int.max
        var fprofit = 0
        
        for i in 0 ..< prices.count {
            if profit > (prices[i] - minPrice) {
                fprofit += profit
                profit = 0
                minPrice = prices[i]
            }
            else {
                profit = max(profit, (prices[i] - minPrice))
                minPrice = min(prices[i], minPrice)
            }
            print("i: \(i), prices[\(i)]: \(prices[i]), fprofit: \(fprofit), profit: \(profit), minPrice: \(minPrice)")
        }
        fprofit += profit
        
        return fprofit
         */
    }
    
    //Leetcode - 125 Valid Palindrome
    func isPalindrome(_ s: String) -> Bool {
        var filterStr = ""
        s.lowercased().enumerateSubstrings(in: s.startIndex..<s.endIndex, options: .byWords) { (subStr, _, _, _) in
            filterStr += subStr!
        }
        return filterStr == String(filterStr.reversed()) ? true : false
    }
    
    //Leetcode - 136 Single Number
    func singleNumber(_ nums: [Int]) -> Int {
        var dic = [Int:Int]()
        for i in nums {
            if dic[i] != nil {
                dic[i] = dic[i]! + 1
            }
            else {
                dic[i] = 1
            }
        }
        let fDic = dic.filter { $0.value == 1 }
        return fDic.keys.first!
    }
    
    //Leetcode - 169 Majority Element
    func majorityElement(_ nums: [Int]) -> Int {    // [2,2,1,1,1,2,2]
        /* Approach 1
         Runtime: 156 ms, faster than 50.31% of Swift online submissions for Majority Element.
         Memory Usage: 21.6 MB, less than 33.33% of Swift online submissions for Majority Element.
         */
        var dic: [Int: Int] = [:]
        for num in nums {
            dic[num] = dic[num] == nil ? 1 : dic[num]! + 1
        }
        for (key, value) in dic {
            if value > (nums.count / 2) {
                return key
            }
        }
        return 0
    }
    
    //Leetcode - 171 Excel Sheet Column Number
    func titleToNumber(_ s: String) -> Int {    //AA = 27(26+1), AB = 28(26+2), AC = 29, AZ = 52(26 + 26), BA = 53
        let dic = ["A":1, "B":2, "C":3, "D":4, "E":5, "F":6, "G":7, "H":8, "I":9, "J":10, "K":11, "L":12, "M":13, "N":14, "O":15, "P":16, "Q":17, "R":18, "S":19, "T":20, "U":21, "V":22, "W":23, "X":24, "Y":25, "Z":26]
        var sum = 0
        let ary = Array(s)
        for v in ary {
            if let value = dic[String(v)] {
                sum = sum * 26 + value
            }
        }
        return sum
    }
    
    //Leetcode - 189
    func rotate(_ nums: inout [Int], _ k: Int) {
        //Solution 1:
        //    if nums.count == 0 { return }
        //
        //    for _ in 0 ..< k {
        //        nums.insert(nums.last!, at: 0)
        //        _ = nums.popLast()
        //    }
        
        //Solution 2:
        if nums.count <= 1 { return }
        
        var step = k
        if nums.count < step {
            step = step % nums.count
        }
        
        let range = (nums.count - step)...
        let rotateObj = nums[range]
        
        nums.removeSubrange(range)
        nums.insert(contentsOf: rotateObj, at: 0)
    }
    
    //Leetcode 191 Number of 1 bits
    func hammingWeight(_ n: Int) -> Int {
        var i = 0
        let str = n.decTobin()
        for c in str {
            if c == "1" {
                i += 1
            }
        }
        return i
    }
    
    //Leetcode 198 House Robber
    // [5, 6, 0, 7, 2, 1, 6, 8, 9, 7]
    func rob(_ nums: [Int]) -> Int {
        return robSolution1(nums)
        return robSolution2(nums)
    }
    
    func robSolution1(_ nums: [Int]) -> Int {
        /* Solution1:
         Time:  O(n)
         Space: O(1)
         1. 先排除0 個數量的狀況
         2. 因為不能跟相鄰的做加總, 故要再往前一格(i-2), 竟然至少要-2 所以要從 i > 1 才開始
         3. 開始for loop, 從第一個...該索引值的前一個(i-2), 並挑選這範圍內的最大值與自己加總
         4. 因為會更改原本的值(houses[i] +=), 所以最後取最大值回傳即可
         */
        if (nums.count == 0) { return 0 }
        
        var houses = nums
        for i in houses.indices where i > 1 {
            houses[i] += houses[0...i-2].max()!
        }
        return houses.max()!
    }
    
    func robSolution2(_ nums: [Int]) -> Int {
        var dict = [Int:Int]()
        func rob2(_ index:Int) -> Int {
            if index < 0 {
                return 0
            }
            if let value = dict[index] {
                return value
            }
            let result =  max(rob2(index-2)+nums[index],rob2(index-1))
            dict[index,default:0] = result  //default 為, 若給定的index 在dict 裡面沒有就會回傳 default值
            return result
        }
        return rob2(nums.count-1)
    }
    
    //Leetcode - 202
    func isHappy(_ n: Int) -> Bool {
        let num = getSeparatationNumber(n)
        if self.haveAppeared.keys.contains(num) { return false }
        self.haveAppeared[num] = 1
        return num == 1 ? true : isHappy(num)
    }
    
    func getSeparatationNumber(_ n: Int) -> Int {
        var num = n
        var sum: Int = 0
        while num > 0 {
            sum += Int(pow(Double(num % 10), 2))
            num /= 10
        }
        return sum
    }
    
    //Leetcode - 204 Count Primes
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else { return 0 }
        var isPrimes = Array(repeating: true, count: n)
        var count: Int = 0
        
        //num 0 and num 1 are not primes
        isPrimes[0] = false
        isPrimes[1] = false
        
        //start from num 2
        for i in 2 ..< n {
            guard isPrimes[i] else { continue }
            count += 1
            
            var index = i * i
            while index < n {
                isPrimes[index] = false
                index += i
            }
        }
        return count
    }
    
    //Leetcode - 205 Isomorphic Strings
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        //Time limit exceeded
        if s.count != t.count { return false }

        var dict:[Character:Character] = [:]
        var replacedAry:[Character] = []
        
        for i in 0 ..< s.count {
            let originalChar = s[s.index(s.startIndex, offsetBy: i)]
            let replacedChar = t[t.index(t.startIndex, offsetBy: i)]
            
            if let value = dict[originalChar] {
                if value != replacedChar {
                    return false
                }
                continue
            }
            if replacedAry.contains(replacedChar) { return false }
            replacedAry.append(replacedChar)
            dict[originalChar] = replacedChar
        }
        return true
    }
    
    //Leetcode - 206 Reverse Linked List
    func reverseList(_ head: ListNode?) -> ListNode? {
        return reverse(cur: head, pre: nil)
    }
    
    func reverse(cur: ListNode?, pre: ListNode?) -> ListNode? {
        if cur == nil { return pre }
        let next = cur!.next
        cur!.next = pre
        return reverse(cur: next, pre: cur)
    }
    
    //Leetcode - 217 Contains Duplicate
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dic = [Int:Int]()
        for i in nums {
            if dic[i] != nil {
                return true
            }
            else {
                dic[i] = 1
            }
        }
        return false
    }
    
    //Leetcode - 226 Invert Binary Tree
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil || root?.val == nil {
            return nil
        }
        let temp = root?.left
        root?.left = invertTree(root?.right)
        root?.right = invertTree(temp)
        return root
    }
    
    //Leetcode - 231 Power of Two 負數不行
    func isPowerOfTwo(_ n: Int) -> Bool {   //218 109
        if n <= 0 { return false }
        var number = n
        while number > 2 {
            if number % 2 == 1 {
                return false
            }
            else {
                number /= 2
            }
        }
        return true
    }
    
    //Leetcode - 234 Palindrome Linked List
    func isPalindrome(_ head: ListNode?) -> Bool {
        //Runtime: 92 ms, faster than 92.90%
        var ary: [Int] = []
        transferListNodeToIntAry(head, &ary)
        if ary == ary.reversed() { return true }
        return false
    }
    
    func transferListNodeToIntAry(_ node: ListNode?, _ ary: inout [Int]) {
        if node == nil { return }
        ary.append(node!.val)
        return transferListNodeToIntAry(node!.next, &ary)
    }
    
    //Leetcode - 242 Valid Anagram
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.isEmpty && t.isEmpty {
            return true
        }
        
        var dic = [Character: Int]()
        for sLetter in s {
            dic[sLetter] = dic[sLetter] != nil ? dic[sLetter]! + 1 : 1
        }
        
        for tLetter in t {
            if let value = dic[tLetter] {
                dic[tLetter] = value - 1 == 0 ? nil : value - 1
            }
            else {
                return false
            }
        }
        return dic.keys.count == 0 ? true : false
    }
    
    //Leetcode 263 Ugly Number
    func isUgly (_ num: Int) -> Bool {
        //Runtime: 0 ms, faster than 100.00%
        if num == 0 { return false }
        if num == 1 { return true }
        
        var number = num
        while number % 2 == 0 || number % 3 == 0 || number % 5 == 0 {
            if number % 2 == 0 {
                number /= 2
            }
            
            if number % 3 == 0 {
                number /= 3
            }
            
            if number % 5 == 0 {
                number /= 5
            }
        }
        
        if number == 1 { return true }
        return false
    }
    
    //Leetcode 258 Add Digits
    func addDigits(_ num: Int) -> Int {
        if num / 10 <= 0 { return num }
        
        var number = num
        var sum: Int = 0
        while number % 10 > 0 || number / 10 > 0 {
            let digit = number % 10
            sum += digit
            number /= 10
            if (number <= 0 && sum / 10 <= 0) {
                return sum
            }
            if (number <= 0) {
                number = sum
                sum = 0
            }
        }
        return sum
    }
    
    //Leetcode - 268 Missing Number
    func missingNumber(_ nums: [Int]) -> Int {
        //Solution 1:
        var variousNums = nums
        variousNums.sort()
        var missingNo = 0
        for i in variousNums {
            if missingNo != i {
                return missingNo
            }
            missingNo += 1
        }
        return missingNo
    }
    
    //Leetcode - 278 First Bad Version
    func firstBadVersion(_ n: Int) -> Int? {
        var low = 1
        var high = n
        
        while low <= high {
            let mid = (low + high) / 2
            if (isBadVersion(mid) && !isBadVersion(mid-1)) {
                return mid
            }
            else if (isBadVersion(mid)) {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        return nil
    }
    
    func isBadVersion(_ n: Int) -> Bool {
        //Leetcode provide
        return true
    }
    
    //Leetcode - 283 Move Zeroes
    func moveZeroes(_ nums: inout [Int]) {      //[0,1,0,3,12]
        if nums.isEmpty { return }
        var cur = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[cur] = nums[i]
                cur += 1
            }
        }
        nums.replaceSubrange(cur..<nums.count, with: repeatElement(0, count: nums.count-cur))
    }
    
    //Leetcode 290 Word Pattern
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let array:[String] = s.components(separatedBy: " ")
        var dict:[String:String] = [:]
        if pattern.count != array.count { return false }
        
        for index in 0 ..< array.count {
            let strIndex = pattern.index(pattern.startIndex, offsetBy: index)
            let letter:String = String(pattern[strIndex])
            if let value = dict[letter] {
                if value == array[index] {
                    continue
                }
                return false
            }
            //Dict 沒值
            if dict.values.contains(array[index]) { return false }
            dict[letter] = array[index]
        }
        return true
    }
    
    //Leetcode - 292 Nim Game, 和朋友玩撿石頭遊戲, n為總數石頭, 一人一次撿1-3顆, 最後一次撿到的算贏, I win ->true, friend -> false
    func canWinNim(_ n: Int) -> Bool {
        return n % 4 == 0 ? false : true
    }
    
    //Leetcode - 342 Power of Four
    func isPowerOfFour(_ num: Int) -> Bool {
        //Runtime: 4 ms, faster than 100.00%
        if num == 0 || num == 2 || num == 3 { return false }
        
        var n = num
        while n % 4 == 0 {
            n /= 4
        }
        return n == 1 ? true : false
    }
    
    //Leetcode - 349 Intersection of Two Arrays
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dic = [Int:Int]()
        var intersections = [Int]()
        
        for i in nums1 {
            dic[i] = 0
        }
        
        for j in nums2 {
            if dic[j] != nil && !intersections.contains(j) {
                intersections.append(j)
            }
        }
        return intersections
    }
    
    //Leetcode - 350  Intersection of Two Arrays II
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dic = [Int:Int]()
        var intersections = [Int]()
        
        for i in nums1 {
            dic[i] = dic[i] != nil ? dic[i]! + 1 : 1
        }
        
        for j in nums2 {
            if let value = dic[j] {
                intersections.append(j)
                dic[j] = value - 1 == 0 ? nil : value - 1
            }
        }
        return intersections
    }
    
    //Leetcode - 387 First Unique Character in a String
    func firstUniqChar(_ s: String) -> Int {
        return firstUniqCharSolution1(s)
        return firstUniqCharSolution2(s)
    }
    
    func firstUniqCharSolution1(_ s: String) -> Int {
        if s.count == 0 { return -1 }
        if s.count == 1 { return 0 }
        
        var dict: [Character:CharInfo] = [:]
        for (i,v) in s.enumerated() {
            if dict[v] == nil {
                dict[v] = CharInfo(count: 1, index: i)
                continue
            }
            var charInfo = dict[v]!
            charInfo.count += 1
            dict[v] = charInfo
        }
        
        // 先找到dict裡面的count == 1的, 若有兩個以上則比較 index
        var ary: [CharInfo] = []
        for info in dict.values {
            if info.count == 1 {
                ary.append(info)
            }
        }
        
        if ary.count < 1 { return -1 }
        if ary.count == 1 { return ary.first!.index }
        
        if ary.count > 1 {
            var firstIndex = Int.max
            for info in ary {
                firstIndex = min(firstIndex, info.index)
            }
            return firstIndex
        }
        return -1
    }
    
    func firstUniqCharSolution2(_ s: String) -> Int {
        if s.count == 0 { return -1 }
        if s.count == 1 { return 0 }
        
        var dict: [Character:Int] = [:]
        for char in s {
            dict[char] = dict[char] == nil ? 1 : dict[char]! + 1
        }
        
        for (i,v) in s.enumerated() {
            if dict[v] == 1 { return i }
        }
        return -1
    }

    //Leetcode - 389 Find the Difference
    func findTheDifference(_ s: String, _ t: String) -> Character {
        if s.isEmpty { return t.first! }
        
        var dict:[Character: Int] = [:]
        for c in t {
            dict[c] = dict[c] != nil ? dict[c]! + 1 : 1
        }
        
        for c in s {
            if dict[c] != nil {
                dict[c] = dict[c]! > 1 ? dict[c]! - 1 : nil
            }
        }
        
        return dict.keys.first!
    }
    
    //Leetcode - 448 Find All Numbers Disappeared in an Array
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {   // [4,3,2,7,8,2,3,1]
        /*Approach 1 ->
         Runtime: 516 ms, faster than 47.55% of Swift online submissions for Find All Numbers Disappeared in an Array.
         Memory Usage: 22.8 MB, less than 33.33% of Swift online submissions for Find All Numbers Disappeared in an Array.
         */
        if (nums.count == 0) { return nums }
        
        var dic: [Int: Int] = [:]
        for num in nums {
            dic[num] = 1
        }
        
        var missing: [Int] = []
        for i in 1...nums.count {
            if dic[i] == nil {
                missing.append(i)
            }
        }
        return missing
        
        /* Approach 2
         Runtime: 652 ms, faster than 6.29% of Swift online submissions for Find All Numbers Disappeared in an Array.
         Memory Usage: 25.9 MB, less than 33.33% of Swift online submissions for Find All Numbers Disappeared in an Array.
         if (nums.count == 0) { return nums }
         let originSet = Set(nums)
         let expectSet = Set<Int>(Array(1...nums.count))
         return Array(expectSet.symmetricDifference(originSet))
         */
        
        /* Approach 3 -> Time limited O(n2)
         if nums.count == 0 { return nums }
         var ary: [Int] = Array(1...nums.count)
         for num in nums {
         if let index = ary.index(of: num) {
         ary.remove(at: index)
         }
         }
         return ary
         */
    }
    
    //Leetcode - 598 Range Addition II
    //func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
    //
    //}
    
    //Leetcode - 724 Find Pivot Index
    func pivotIndex(_ nums: [Int]) -> Int {
        /* Approach 1
         Runtime: 160 ms, faster than 36.42% of Swift online submissions for Find Pivot Index.
         Memory Usage: 20.6 MB, less than 25.00% of Swift online submissions for Find Pivot Index.
         */
        if nums.count <= 2 { return -1 }
        
        let sum = nums.reduce(0, +)     // 先求一次總和
        var preSum = 0
        
        for i in 0 ..< nums.count {
            let rightSum = i == nums.count - 1 ? 0 : sum - preSum - nums[i]  // 總和 - 左邊和 - index該數本身
            if rightSum == preSum {  // 左邊和 == 右邊和
                return i
            }
            preSum += nums[i]   // 左邊和一直累積
        }
        return -1
        
        /* Approach 2 - Time limited
         if nums.count <= 2 { return -1 }
         
         for i in 0 ..< nums.count {
         let left = nums[..<i].reduce(0, +)
         let right = nums[(i+1)...].reduce(0, +)
         if left == right {
         return i
         }
         }
         return -1
         */
    }
    
    //Leetcode - 746 Min Cost Climbing Stairs
    func minCostClimbingStairs(_ cost: [Int]) -> Int {      //[10 , 15, 20] || [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
        guard cost.count > 1 else { return 0 }
        var cost = cost
        for i in 2 ..< cost.count {
            // cost[2] = min(100, 1)    = 2
            // cost[3] = min(1, 100)    = 3
            // cost[4] = min(1, 1)      = 3
            // cost[5] = min(1, 1)      = 103
            // cost[6] = min(100, 1)    = 1 + 3 = 4
            // cost[7] = min(1, 100)    = 1 + 4 = 5
            // cost[8] = min(1, 1)      = 100 + 4 = 104
            // cost[9] = min(100, 1)    = 1 + 5 = 6
            cost[i] += min(cost[i - 1], cost[i - 2])
        }
        return min(cost[cost.count - 1], cost[cost.count - 2])  // min(6, 104) = 6
    }
    
    //Leetcode - 771
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var output:Int = 0
        for i in 0..<J.count {
            let jStart = J.index(J.startIndex, offsetBy: i)
            let jEnd = J.index(after: jStart)
            for j in 0..<S.count {
                let SStart = S.index(S.startIndex, offsetBy: j)
                let SEnd = S.index(after: SStart)
                if J[jStart..<jEnd] == S[SStart..<SEnd] {
                    output += 1
                }
            }
        }
        return output
    }
    
    //Leetcode - 970 Powerful Integers
    /*
     Input: x = 2, y = 3, bound = 10
     Output: [2,3,4,5,7,9,10]
     Explanation:
     2 = 2^0 + 3^0
     3 = 2^1 + 3^0
     4 = 2^0 + 3^1
     5 = 2^1 + 3^1
     7 = 2^2 + 3^1
     9 = 2^3 + 3^0
     10 = 2^0 + 3^2
     */
    func powerfulIntegers(_ x: Int, _ y: Int, _ bound: Int) -> [Int] {  // x:2, y:1, bound:10
        
        /* Approach - Time limited
         Runtime: 12 ms, faster than 12.50% of Swift online submissions for Powerful Integers.
         Memory Usage: 22.7 MB, less than 100.00% of Swift online submissions for Powerful Integers.
         */
        var response: Set<Int> = []
        let doubleX: Double = Double(x)
        let doubleY: Double = Double(y)
        var i: Double = 0
        var j: Double = 0
        
        while pow(doubleX, i) <= Double(bound) {
            while pow(doubleY, j) <= Double(bound) {
                let sum = pow(doubleX, i) + pow(doubleY, j)
                if sum <= Double(bound) {
                    response.insert(Int(sum))
                }
                j += 1
                
                if doubleY < 2 {
                    break
                }
            }
            j = 0
            i += 1
            if doubleX < 2 {
                break
            }
        }
        return Array(response)
    }
    
    //Leetcode - 1450 Number of Students Doing Homework at a Given Time
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        if startTime.isEmpty || endTime.isEmpty { return 0 }
        
        let count = min(startTime.count, endTime.count)
        var numberOfStudents = 0
        for i in 0 ..< count {
            let range = startTime[i] ... endTime[i]
            if range.contains(queryTime) { numberOfStudents += 1 }
        }
        return numberOfStudents
    }
    
    func factors(of n: Int) -> [Int] {
        /*
         e.g. 16 = [1, 2, 4, 8, 16]
         因數是相對的, 自己必定跟 1 是互為因數, 漸進地往中間邁進, 直到自己的開根號值
         所以下面的第一步就是從原本的數字開根號 開始往前找, 之後再根據找到的前方 因數 反推後面的因數 (只需要一半的時間)
         */
        precondition(n > 0, "n must be positive")
        
        let sqrtn = Int(Double(n).squareRoot()) // 先轉Double 再開根號
        var factors: [Int] = []
        factors.reserveCapacity(2 * sqrtn) // 'reserveCapacity' is used to avoid array reallocations.
        
        for i in 1...sqrtn {    // 先從1 ... 開根號得值
            if n % i == 0 {
                factors.append(i)  // 可以整除的都是因數, 加入factors
            }
        }
        var j = factors.count - 1
        if factors[j] * factors[j] == n {   // 若因數最後一個數值平方會等於自己, 就從最後一個 - 1  開始往回找
            j -= 1
        }
        while j >= 0 {
            factors.append(n / factors[j])  // n 除與剛剛找到的因數, 就會等於另一邊的因數
            j -= 1
        }
        return factors
    }
}

struct CharInfo {
    var count: Int
    var index: Int
}
