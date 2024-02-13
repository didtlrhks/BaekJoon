//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
import Foundation

let N = Int(String(readLine()!))!
let arr1 = readLine()!.split(separator: " ").map{
    Int(String($0))!
}

var dp1 = Array(repeating: -9999, count: 100001)

dp1[0] = arr1[0] // 이게 첫번째 요소가 가장 큰경우인거고

for i in 1..<N {
    dp1[i] = max(arr1[i],arr1[i] + dp1[i-1])
}
print(dp1.max()!)

