////
////  9663.swift
////  BaekJoon
////
////  Created by 양시관 on 2/9/24.
////
//
//import Foundation
//
//let n = Int(readLine()!)!
//var board = [Int](repeating: 0, count: n)
//var visited = [Bool](repeating: false, count: n)
//var answer = 0
//
//func check(x: Int) -> Bool {
//    for i in 0..<x {
//        if board[i] == board[x] {
//            return false
//        }
//        if abs(board[i] - board[x]) == abs(i - x) {
//            return false
//        }
//    }
//    return true
//}
//
//func dfs(x: Int) {
//    if x == n {
//        answer += 1
//        return
//    }
//    for i in 0..<n {
//        if visited[i] { continue }
//        board[x] = i
//        if check(x: x) {
//            visited[i] = true
//            dfs(x: x + 1)
//            visited[i] = false
//        }
//    }
//}
//
//dfs(x: 0)
//
//print(answer)
