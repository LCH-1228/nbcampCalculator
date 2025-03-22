//AbstractOperation 클래스를 상속받는 뺄셈 기능의 SubtractOperation 클래스 정의
public class SubtractOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: Numeric {
        print(firstNumber - secondNumber)
    }
    
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryInteger, T2: BinaryFloatingPoint  {
        print(T2(firstNumber) - secondNumber)
    }
    
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryFloatingPoint, T2: BinaryInteger  {
        print(firstNumber - T1(secondNumber))
    }
}
