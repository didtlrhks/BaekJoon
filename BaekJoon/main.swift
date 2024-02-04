//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//

// Foundation 프레임워크를 임포트합니다. 이는 다양한 기본 기능 및 데이터 타입 등을 사용할 수 있게 해줍니다.
import Foundation

// 사용자로부터 입력받은 정수 값을 N에 할당합니다. 이 N은 하노이 탑의 디스크 수를 나타냅니다.
let N = Int(readLine()!)!

// 결과 문자열을 저장할 변수 answer를 빈 문자열로 초기화합니다.
var answer = ""

// 이동 횟수를 세기 위한 변수 count를 0으로 초기화합니다.
var count = 0

// 하노이 탑을 해결하는 함수를 정의합니다. num은 옮길 디스크의 수, from은 시작 기둥, to는 목표 기둥, assist는 보조 기둥입니다.
func hanoi(num: Int, from: Int, to: Int, assist: Int) {
    // 기본 경우: 옮길 디스크가 1개일 때, 해당 디스크를 시작 기둥에서 목표 기둥으로 옮깁니다.
    if num == 1 {
        answer += "\(from) \(to)\n" // 결과 문자열에 이동 경로를 추가합니다.
        count += 1 // 이동 횟수를 1 증가시킵니다.
        return // 기본 경우 처리 후 함수를 종료합니다.
    }
    
    // num-1개의 디스크를 시작 기둥에서 보조 기둥으로 옮깁니다. 목표 기둥이 보조 역할을 합니다.
    hanoi(num: num - 1, from: from, to: assist, assist: to)
    // 가장 큰 디스크를 시작 기둥에서 목표 기둥으로 옮깁니다.
    answer += "\(from) \(to)\n" // 결과 문자열에 이동 경로를 추가합니다.
    count += 1 // 이동 횟수를 1 증가시킵니다.
    // 남은 num-1개의 디스크를 보조 기둥에서 목표 기둥으로 옮깁니다. 시작 기둥이 이제 보조 역할을 합니다.
    hanoi(num: num - 1, from: assist, to: to, assist: from)
}

// 하노이 탑 알고리즘을 실행합니다. N개의 디스크를 기둥 1에서 기둥 3으로 이동시키는 과정입니다. 기둥 2는 보조 기둥으로 사용됩니다.
hanoi(num: N, from: 1, to: 3, assist: 2)
// 최종적으로 이동 횟수를 출력합니다.
print(count)
// 이동 경로를 나타내는 문자열을 출력합니다.
print(answer)
