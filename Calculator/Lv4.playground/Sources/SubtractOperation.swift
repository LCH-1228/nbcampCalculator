//AbstractOperation 클래스를 상속받는 뺄셈 기능의 SubtractOperation 클래스 정의
public class SubtractOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: Numeric {
        print(firstNumber - secondNumber)
    }
}
