//Calculation 프로토콜을 채택하는 곱셈 기능의 MultiplyOperation 클래스 정의
public class MultiplyOperation: Calculation {
    
    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber * secondNumber)
    }
}
