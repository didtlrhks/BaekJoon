////
////  11660.swift
////  BaekJoon
////
////  Created by 양시관 on 2/22/24.
////
//
//import Foundation
//let nm = readLine()!.split(separator: " ").compactMap { Int($0) }
//let n = nm[0]
//let m = nm[1]
//var matrix: [[Int]] = [Array(repeating: 0, count: n+1)]
//
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//    matrix.append([0] + input)
//}
//
//var dp = matrix
//for i in 1...n {
//    for j in 1...n {
//        dp[i][j] = matrix[i][j] + dp[i-1][j] + dp[i][j-1] - dp[i-1][j-1]
//    }
//}
//
//for _ in 0..<m {
//    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
//    let (x1,y1,x2,y2) = (input[0], input[1], input[2], input[3])
//    print(dp[x2][y2] - dp[x1-1][y2] - dp[x2][y1-1] + dp[x1-1][y1-1])
//}
//
