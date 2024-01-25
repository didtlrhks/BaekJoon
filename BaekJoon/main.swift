//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//


import Foundation 
import SwiftUI
import Foundation

let n = Int(String(readLine()!))!
var arr:[[Int]] = [[]]
var dp = Array(repeating: Array(repeating: 0, count: 501), count: 501)
for _ in 1...n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

dp[1][0] = arr[1][0]
for i in stride(from: 2, through: n, by: 1){
    for j in 0..<arr[i].count{
        if j == 0{
            dp[i][j] = dp[i - 1][j] + arr[i][j]
        }else if j < arr[i].count - 1{
            dp[i][j] = max(dp[i - 1][j] + arr[i][j], dp[i - 1][j - 1] + arr[i][j])
        }else if j == arr[i].count - 1{
            dp[i][j] = dp[i - 1][j - 1] + arr[i][j]
        }
        
    }
}
print(dp[n].max()!)
