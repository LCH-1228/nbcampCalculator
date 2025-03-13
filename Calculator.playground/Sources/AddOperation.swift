//Calculation 프로토콜을 채택하는 덧셈 기능의 AddOperation 클래스 정의
public class AddOperation: Calculation {

    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber + secondNumber)
    }
}
