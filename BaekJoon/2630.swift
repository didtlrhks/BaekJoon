////
////  2630.swift
////  BaekJoon
////
////  Created by 양시관 on 3/7/24.
////
//
//import Foundation
//
//let N = Int(readLine()!)!
//var cnt = [0,0]
//var arr = [[Int]]()
//for _ in 0..<N {
//    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
//}
//func sol(size: Int, y: Int, x: Int) {
//    let n = arr[y][x]
//    for i in y..<y+size {
//        for j in x..<x+size {
//            if arr[i][j] != n {
//                let new = size / 2
//                for ii in 0..<2 {
//                    for jj in 0..<2 {
//                        sol(size: new, y: y+ii*new, x: x+jj*new)
//                    }
//                }
//                return
//            }
//        }
//    }
//    cnt[n] += 1
//}
//sol(size: N, y: 0, x: 0)
//cnt.forEach { print($0) }
