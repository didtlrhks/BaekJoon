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
let array = readLine()!.split(separator: " ").map { Int($0)! }
var cache = [Int](repeating: 1, count: n)

for i in 1..<n {
    for j in 0..<i {
        if array[i] > array[j] {
            cache[i] = max(cache[i], cache[j] + 1)
        }
    }
}

print(cache.max()!)




