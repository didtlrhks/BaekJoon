////
////  2559.swift
////  BaekJoon
////
////  Created by 양시관 on 2/16/24.
////
//
//import Foundation
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let n = input[0], k = input[1]
//var array = [0] + readLine()!.split(separator: " ").map { Int($0)! }
//
//for i in 1...n {
//    array[i] += array[i - 1]
//}
//
//var answer = Int.min
//
//for i in 0...n - k {
//    answer = max(answer, array[i + k] - array[i])
//}
//
//print(answer)
