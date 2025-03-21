//
//  CustomError.swift
//  
//
//  Created by Chanho Lee on 3/21/25.
//

// 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
public enum CustomError: Error {
    case devideZero
    case devidedByZero
    case remaindZero
    case remaindByZero
    case remainderOperationNotInteger
}
