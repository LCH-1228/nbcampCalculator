// 나누기 연산 클래스
public class DivideOperation {
    
    public init() {
        
    }
    
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    public enum CustomError: String, Error {
        case devideZero
        case devidedByZero
        case remindOperationNotInteger
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        do {
            if firstNumber == 0 {
                throw CustomError.devideZero
            } else if secondNumber == 0 {
                throw CustomError.devidedByZero
            } else {
                print(firstNumber / secondNumber)
            }
        } catch(let error) {
            print("Error:",error as! CustomError)
        }
    }
}
