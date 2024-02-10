////
////  2580.swift
////  BaekJoon
////
////  Created by 양시관 on 2/10/24.
////
//
//import Foundation
//import Foundation
//var arr = [[Int]]()
//var col = Array(repeating: Array(repeating: false, count: 10), count: 9)
//var row = Array(repeating: Array(repeating: false, count: 10), count: 9)
//var square = Array(repeating: Array(repeating: false, count: 10), count: 9)
//for i in 0..<9{
//    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//    for j in 0..<9{
//        if arr[i][j] != 0{
//            col[i][arr[i][j]] = true
//            row[j][arr[i][j]] = true
//            square[(i / 3) * 3 + (j / 3)][arr[i][j]] = true
//        }
//    }
//}
//
//
//func dfs(_ depth: Int){
//    let x = depth / 9
//    let y = depth % 9
//    if depth == 81{
//
//            for i in 0..<9{
//                for j in 0..<9{
//                    print(arr[i][j], terminator: " ")
//                }
//                print()
//            }
//        exit(0)
//    }
//
//    if arr[x][y] == 0{
//        for i in 1..<10{
//            if !col[x][i] && !row[y][i] && !square[(x / 3) * 3 + (y / 3)][i]{
//                col[x][i] = true
//                row[y][i] = true
//                square[(x / 3) * 3 + (y / 3)][i] = true
//                arr[x][y] = i
//                dfs(depth + 1)
//                col[x][i] = false
//                row[y][i] = false
//                square[(x / 3) * 3 + (y / 3)][i] = false
//                arr[x][y] = 0
//            }
//        }
//    }else{
//        dfs(depth + 1)
//    }
//
//}
//dfs(0)
