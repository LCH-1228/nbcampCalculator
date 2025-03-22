//AbstractOperation 클래스를 상속받는 덧셈 기능의 AddOperation 클래스 정의
public class AddOperation: Operation {
    
    public init() {
        
    }

    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: Numeric {
        print(firstNumber + secondNumber)
    }
}
