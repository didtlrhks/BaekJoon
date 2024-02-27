//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
import Foundation
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var preFix = Array(repeating: 0, count: arr.count)
var count = Array(repeating: 0, count: m)

for i in 0..<arr.count{
    if i == 0 {
        preFix[i] = arr[i]
    }else{
        preFix[i] = (arr[i] + preFix[i - 1])
    }
    count[preFix[i] % m] += 1
}

//print(count)
var result = 0
for i in 0..<m{
    result += (count[i] * (count[i] - 1)) / 2
}

print(result + count[0])

