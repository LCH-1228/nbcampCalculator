//AbstractOperation 클래스를 상속받는 덧셈 기능의 AddOperation 클래스 정의
public class AddOperation: Operation {
    
    public init() {
        
    }

    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber + secondNumber)
    }
}
