////
////  10844.swift
////  BaekJoon
////
////  Created by 양시관 on 1/25/24.
////
//
//import Foundation
//
//
//let k = Int(readLine()!)! //수의 길이
//var dq = Array(repeating: Array(repeating: 0, count: 10), count: 101)
//var sum2 = 0
//
//for i in 1...9 {
//    dq[1][i] = 1
//}
//
//dq[2][0] = 1
//dq[2][1] = 1
//dq[2][2] = 2
//dq[2][3] = 2
//dq[2][4] = 2
//dq[2][5] = 2
//dq[2][6] = 2
//dq[2][7] = 2
//dq[2][8] = 2
//dq[2][9] = 1
////두자ㅣㄹ수중에서 끝수를 뭐로 지정하느냐에 따라서 나올수잇는 조건이ㄷ다르ㄱㄱ대문에 이렇게 초기화해줌
//
//for i in stride(from: 3, through: k, by: 1) { // i 를 3부터 k 까지 1씩 증가시킨다
//    for j in 0...9 {
//        if j == 0 {
//            dq[i][j] = dq[i - 1][j + 1] % 1000000000
//        }else if j == 9{
//            dq[i][j] = dq[i - 1][j - 1] % 1000000000
//        }else {
//            dq[i][j] = (dq[i - 1][j - 1] + dq[i - 1][j + 1]) % 1000000000
//        }
//    }
//}// 3자리수에 대한 연산중에 특이 케이스인 0과 9의 조건을 달아주고 나머지 부분을 마지막 자릿수를 고정시키고 반복시킨 부분
//
//for i in 0...9 {
//    sum2 += dq[k][i]
//}
//
//print("\(sum2 % 1000000000)")
