////
////  2108.swift
////  BaekJoon
////
////  Created by 양시관 on 2/8/24.
////
//
//import Foundation
//import Foundation
//let n = Int(readLine()!)!
//var arr: [Int] = []
//var average: Double = 0.0
//var sum = 0
//var dict = [Int:Int]()
//
//for _ in 0..<n {
//    let num = Int(readLine()!)!
//    arr.append(num)
//    dict[num, default: 0] += 1
//}
//
////산술평균
//for i in 0..<arr.count {
//    sum += arr[i]
//}
//average = (Double(sum) / Double(arr.count))
//print("\(Int(round(average)))")
//
////중앙값
//arr.sort()
//print("\(arr[((arr.count / 2))])")
//
////최빈값
//let maxValue = dict.max(by: {$0.value < $1.value})!.value
//var mode = dict.filter({ $0.value == maxValue}).keys.sorted()
//if mode.count > 1 {
//    print("\(mode[1])")
//}else {
//    print("\(mode[0])")
//}
//
////범위
//print("\(arr.max()! - arr.min()!)")
