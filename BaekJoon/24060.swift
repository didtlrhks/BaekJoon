//
//  24060.swift
//  BaekJoon
//
//  Created by 양시관 on 1/20/24.
//

import Foundation


//
//import Foundation
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }//인풋이라는 변수안에다가 한줄씩 받으면서 구분은 한칸띄어서받는 녀석을 생성함. 여기서 ! 는 readLine 이 nil이아니라는 걸 증명함 map 함수는 배열의 각요소에대한 주어진 변환을 적용한다는 의미임, 그리고 Int($0)! 이부분에서는 배열의 요소들을 Int 형으로 바꿔준다는걸 의미하면서 nil인경우는 없다를 알려주는거같음
//let n = input[0], k = input[1] // n 과 k 로 배열의 인덱스를 의미하게 바꿔줌
//var array = readLine()!.split(separator: " ").map { Int($0)! } // 이것도 마찬가지임 아마 이문제의 의도에서는 input 은 첫입력 배열을 의미하는거같고 이거는 분할정렬을 했을대 담는 상자라고 판단해야댐
//var tmp = [Int](repeating: -1, count: n) // 이녀석은 tmp라는 배열을 생성하는거고 타입은 Int 타입 초기화하는 것은 모두 -1 로 초기화하라는거고 conut n 은 배열의 크기를 n이라고 설정해주는걸 말함.
//var count = 0 //여기서 일단 0으로 초기화해주고
//var answer = -1// 얘도 두번째 조건에따른 초기화과정이다
//
//func mergeSort(_ array: inout [Int], p: Int, r: Int) { // 함수를 정의해주는데 대신 참조를 이용해서 함수의 내부에서 외부의 배열데이터를 바꿀 수잇다는걸 알수있고 첫배열이 p 고 끝이 r 이다를 의미함
//    if p < r { // 이제 크기를 비교하는거임 인덱스를 비교한다고 생각하면됨
//        let q = (p + r) / 2 // 이거는 이제 배열을 가운데로 짜르기위해서 중간짖점인 q 를 지정해주는거임
//        mergeSort(&array, p: p, r: q) // 앞쪽부분을 정렬해주는거임
//        mergeSort(&array, p: q + 1, r: r) // 두번째 부분을 정렬해주는거임
//        merge(&array, p: p, q: q, r: r) // 분할된 두부분을 정렬하면서 합쳐줌
//    }
//}
//
//func merge(_ array: inout [Int], p: Int, q: Int, r: Int) { // 일단 배열을 함수에서 변경할수있는 함수를 선언을 해주고
//    var i = p, j = q + 1, t = 0 // p, q 랑 q+1 부터 r 까지의 두배열인덱스와 새로 넣을 배열의 인덱스를 관리할 변수들 선언해주고
//    
//    while i <= q && j <= r {
//        if array[i] <= array[j] {
//            tmp[t] = array[i]
//            t += 1
//            i += 1
//        } else {
//            tmp[t] = array[j]
//            t += 1
//            j += 1
//        }
//    }
//    //위 와일문은 앞부분에 대한 배열의 정렬을 담담함 배열의 인덱스를 조절해서 정렬
//    while i <= q {
//        tmp[t] = array[i]
//        t += 1
//        i += 1
//    }
//    
//    while j <= r {
//        tmp[t] = array[j]
//        t += 1
//        j += 1
//    }
//    
//    i = p
//    t = 0
//        //두번째 3번째 while 문은 서브 배열 2번째것에 대한 인덱스를 조절해준다
//    while i <= r {
//        count += 1
//        if count == k {
//            answer = tmp[t]
//            break
//        }
//        array[i] = tmp[t]
//        i += 1
//        t += 1
//    }
// // 여기는 이제 서브배열들을 가져와서 합쳐주는 배열을 담당함 내가 원하는 정렬과 서브배열들을 합친녀석들이 같아지면 멈춤
//}
//mergeSort(&array, p: 0, r: array.count - 1)//결국 배열에 병합정렬을 적용하느 과정임
//print(answer) // 답출력
// 
