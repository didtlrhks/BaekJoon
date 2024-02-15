////
////  11054.swift
////  BaekJoon
////
////  Created by 양시관 on 2/15/24.
////
//
//import Foundation
//import Foundation
//
//let N = Int(readLine()!)!
//let nArray = readLine()!.split(separator: " ").map { Int(String($0))!}
//let lArray = Array(nArray.reversed())
//
//var r_dp = Array(repeating: 1, count: N)
//var l_dp = Array(repeating: 1, count: N)
//var dp = Array(repeating: 1, count: N)
//
//for i in 1..<N {
//    for j in 0..<i {
//        if nArray[j] < nArray[i] {
//            r_dp[i] = max(r_dp[i], r_dp[j] + 1)
//        }
//    }
//}
//
//for i in 1..<N {
//    for j in 0..<i {
//        if lArray[j] < lArray[i] {
//            l_dp[i] = max(l_dp[i], l_dp[j] + 1)
//        }
//    }
//}
//
//l_dp = Array(l_dp.reversed())
//for i in 0..<r_dp.count {
//    dp[i] = r_dp[i] + l_dp[i]
//}
//
//print(dp.max()! - 1)
//profile
