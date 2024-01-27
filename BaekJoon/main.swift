//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//


import Foundation 
import SwiftUI
import Foundation




let n = Int(readLine()!)!
var connect: [Int] = []

var db = Array(repeating: 1, count: n+1)
connect.append(0)

for _ in 1...n {
    connect.append(Int(readLine()!)!)
    //복사 해주고
}

db[1] = connect[1]


if (n > 1) {
    db[2] = connect[1] + connect[0]
}
if (n > 2) {
    for i in 3 ..< n+1 {
        db[i] = max(db[i-1], db[i-3] + connect[i-1] + connect[i], db[i-2] + connect[i])
    }
}
print(db[n])




//var cache = [Int](repeating: 1, count: n)
//for _ in 0..<n {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    let a = input[0], b = input[1]
//    connect.append((a, b))
//}
//
//connect = connect.sorted { $0.0 < $1.0 }
//
//let array = connect.map { $0.1 }
//
//for i in 1..<n {
//    for j in 0...i {
//        if array[i] > array[j] {
//            cache[i] = max(cache[i], cache[j] + 1)
//        }
//    }
//}
//
//print(n - cache.max()!)
