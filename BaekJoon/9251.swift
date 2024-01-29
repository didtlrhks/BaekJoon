//
//  9251.swift
//  BaekJoon
//
//  Created by 양시관 on 1/29/24.
//
//
//import Foundation
//
//
//let str1 = ["0"] + readLine()!.map { $0 }
//let str2 = ["1"] + readLine()!.map { $0 }
//let n = str1.count
//let m = str2.count
//
//var cache = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
//
//for y in 1..<m {
//    for x in 1..<n {
//        if str2[y] != str1[x] {
//            cache[y][x] = max(cache[y - 1][x], cache[y][x - 1])
//        } else {
//            cache[y][x] = cache[y - 1][x - 1] + 1
//        }
//    }
//}
//
//print(cache[m - 1][n - 1])
//
