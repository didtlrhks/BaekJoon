//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//


import Foundation 
import SwiftUI
import Foundation

let str1 = ["0"] + readLine()!.map { $0 } // 0이라는 스트링 앞에 redaline으로 배열을 추가할수있도록 만들어줌 붙이는 이유는 인덱스를 0부터 시작할수 있게 하기위해서
let str2 = ["1"] + readLine()!.map { $0 }
let n = str1.count// str1 의 개수를 세줌
let m = str2.count

var cache = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)

for y in 1..<m {
    for x in 1..<n {
        if str2[y] != str1[x] { //같은 위치의 값이 같은경우가 아닌경우에 이 소스블록을 따라감
            cache[y][x] = max(cache[y - 1][x], cache[y][x - 1])// 이게 어떻게 되는지는 알고리즘을 그려봐야알듯,
        } else {// 문자가 같은경우
            cache[y][x] = cache[y - 1][x - 1] + 1//대각선에다가 + 1 을 해주면 됨
        }
    }
}

print(cache[m - 1][n - 1])

