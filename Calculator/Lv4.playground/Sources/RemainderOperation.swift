//AbstractOperation 클래스를 상속받는 나머지 연산 기능의 RemainderOperation 클래스 정의
public class RemainderOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) throws -> Void {
        var result: Int = 0
        if firstNumber == 0 {
            throw CustomError.remaindZero //firstNumber가 0일 경우 Error throw
        } else if secondNumber == 0 {
            throw CustomError.remaindByZero //secondNumber가 0닐 경우 Error throw
        } else if firstNumber - firstNumber.rounded(.down) == 0 && secondNumber - secondNumber.rounded(.down) == 0 { // firstNumber와 secondNumber가 정수인지 판별하는 논리 작성
            result = Int(firstNumber) % Int(secondNumber) //나머지연산은 Int에서만 가능하여 Double을 Int로 명시적 변환
            print("\(firstNumber)을(를) \(secondNumber)(으)로 나눈 나머지는 \(result)입니다.")
        } else {
            throw CustomError.remainderOperationNotInteger //firstNumber와 secondNumber가 정수가 아닐경우 Error throw
        }
    }
}
