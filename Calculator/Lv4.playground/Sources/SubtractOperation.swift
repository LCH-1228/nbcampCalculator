//AbstractOperation 클래스를 상속받는 뺄셈 기능의 SubtractOperation 클래스 정의
public class SubtractOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber - secondNumber)
    }
}
