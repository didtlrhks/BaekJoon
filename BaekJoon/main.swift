//
//  main.swift
//  BaekJoon
//
//  Created by 양시관 on 1/19/24.
//
import Foundation

let n = Int(readLine()!)!
var board = [Int](repeating: 0, count: n)//배열을 생성해준다 0으로초기화하고 배열의 개숫는 n개로
var visited = [Bool](repeating: false, count: n) // 이것도 배열을 생성해주는데 타입은 Bool 타입으로 초기화는 fasle count는 n 개로 설정해줌
var answer = 0

func check(x: Int) -> Bool { // 결과값은 bool 값으로 리턴해주고 x 매개변수를 넣어주는것은 Int 를 넣어주면 댐
    for i in 0..<x {
        if board[i] == board[x] { // 이거는 가로 세로를 설정하는 방법이고
            return false
        }
        if abs(board[i] - board[x]) == abs(i - x) { // 이게 대각선을 계산하는방법임 여기 계산을 말해보자면 같은 대각선위치에 있다는걸알기위해서는 이처럼 하면 됨 그랬을대 false 를 반환한다는것은 놓을수있다는거니까 같은 대각선에 없다라는 의미가 되는거임
            return false
        }
    }
    return true
}

func dfs(x: Int) {
    if x == n {
        answer += 1
        return
    }
    for i in 0..<n {
        if visited[i] { continue }
        board[x] = i
        if check(x: x) {
            visited[i] = true
            dfs(x: x + 1)
            visited[i] = false
        }
    }
}

dfs(x: 0)

print(answer)
