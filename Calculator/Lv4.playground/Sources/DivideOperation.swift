//AbstractOperation 클래스를 상속받는 나눗셈 기능의 DivideOperation 클래스 정의
public class DivideOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) throws -> Void {
        
        if firstNumber == 0 {
            throw CustomError.devideZero
        } else if secondNumber == 0 {
            throw CustomError.devidedByZero
        } else {
            print(firstNumber / secondNumber)
        }
    }
}
