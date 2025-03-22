// 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
public enum CustomError: Error {
    case devideZero // DivideOperation에서 0을 나눌시 발생하는 에러
    case devidedByZero // DivideOperation에서 0으로 나눌시 발생하는 에러
    case remaindZero // RemainderOperation에서 0을 나누어 나머지 연산시 발생하는 에러
    case remaindByZero // RemainderOperation에서  0으로 나누어 나머지 연산시 발생하는 에러
    case remainderOperationNotInteger // RemainderOperation에서 입력이 정수가 아닐시 발생하는 에러
}
