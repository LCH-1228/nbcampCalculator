//Calculation 프로토콜을 채택하는 뺄셈 기능의 SubtractOperation 클래스 정의
public class SubtractOperation: Calculation {
    
    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber - secondNumber)
    }
}
