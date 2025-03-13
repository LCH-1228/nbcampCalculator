//Calculation 프로토콜을 채택하는 나머지 계산 기능의 RemaindOperation 클래스 정의
public class RemainderOperation: Calculation {
    
    public init() {
        
    }
    
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    public enum CustomError: String, Error {
        case devideZero
        case devidedByZero
        case remindOperationNotInteger
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double){
        var result: Int = 0
        
        // do-catch 사용으로 firstNumber와 secondNumber가 정수가 아니라면 오류처리
        do {
            if firstNumber == 0 {
                throw CustomError.devideZero //firstNumber가 0일 경우 Error throw
            } else if secondNumber == 0 {
                throw CustomError.devidedByZero //secondNumber가 0닐 경우 Error throw
            } else if firstNumber - firstNumber.rounded(.down) == 0 && secondNumber - secondNumber.rounded(.down) == 0 { // firstNumber와 secondNumber가 정수인지 판별하는 논리 작성
                result = Int(firstNumber) % Int(secondNumber) //나머지연산은 Int에서만 가능하여 Double을 Int로 명시적 변환
                print("\(firstNumber)을(를) \(secondNumber)(으)로 나눈 나머지는 \(result)입니다.")
            } else {
                throw CustomError.remindOperationNotInteger //firstNumber와 secondNumber가 정수가 아닐경우 Error throw
            }
        } catch(let error) { //throw한 error catch
            print("Error:",error as! CustomError) //사전에 정의된 CustomError 출력
        }
    }
}
