//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
let n = readLine()!
var arr: [Int] = []

for i in n {
    arr.append(Int(String(i))!)
}
arr.sort(by: >)

for k in 0..<arr.count {
    print("\(arr[k])", terminator: "")
}
