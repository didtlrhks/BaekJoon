////
////  2447.swift
////  BaekJoon
////
////  Created by 양시관 on 2/3/24.
////
//
//import Foundation
//let n = Int(readLine()!)!
//
//func drawStar(n: Int, pattern: [String]) {
//    if n == 1 {
//        pattern.forEach {
//            print($0)
//        }
//        return
//    }
//    
//    let starLine = pattern.map { $0 + $0 + $0 }
//    let emptyLine = pattern.map { $0 + String(repeating: " ", count: $0.count) + $0 }
//    drawStar(n: n / 3, pattern: starLine + emptyLine + starLine)
//}
//
//drawStar(n: n, pattern: ["*"])
//
