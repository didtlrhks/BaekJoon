////
////  11053.swift
////  BaekJoon
////
////  Created by 양시관 on 1/24/24.
////
//
//import Foundation
//
//let n = Int(readLine()!)! // 입력하나 받고
//let array = readLine()!.split(separator: " ").map { Int($0)! }// 띄어쓰기 기준으로 받아온 숫자들의 스트링을 Int 로 바궈서 배열에 넣어주는 역할을 하고
//var cache = [Int](repeating: 1, count: n)// 맨처음 배열의 개수는 n 개이고 repeating 로 모든 요소를 1로 초기화해주는역할의 소스코드임
//
//for i in 1..<n { // 1부터 n까지 i 를 증가
//    for j in 0..<i { // 얘는 j를 0부터 i까지
//        if array[i] > array[j] {//어레이 i 의 인덱스를 올리고 에렝 j 의 인덱스를 올리는ㄴ데 만약에 값이 i 어레이가 더클경우에
//            cache[i] = max(cache[i], cache[j] + 1) // 둘중에 큰값을 다시 넣어준다
//        
//        }
//    }
//}
//
//print(cache.max()!)
//
//
//
//
