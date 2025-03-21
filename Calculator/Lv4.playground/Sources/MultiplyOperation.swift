//AbstractOperation 클래스를 상속받는 곱셈 기능의 MultiplyOperation 클래스 정의
public class MultiplyOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber * secondNumber)
    }
}
