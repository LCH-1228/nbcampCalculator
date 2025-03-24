//Operation 프로토콜을 채택하는 덧셈 기능의 AddOperation 클래스 정의
public class AddOperation:Operation {
    
    public init() {
        
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 두 파라미터의 타입이 모두 BinaryInteger 또는 FloatingPoint로 동일한 경우에 더하기 연산
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: Numeric {
        print(firstNumber + secondNumber)
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 첫번째 파라미터의 타입이 BinaryInteger이고 두번째 파라미터의 타입이 FloatingPoint 경우에 더하기 연산
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryInteger, T2: FloatingPoint  {
        print(T2(firstNumber) + secondNumber)  //연산을 위해 첫번째 파라미터 BinaryInteger 타입을 BinaryFloatPoint로 변환
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 첫번째 파라미터의 타입이 FloatingPoint이고 두번째 파라미터의 타입이 BinaryInteger 경우에 더하기 연산
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: FloatingPoint, T2: BinaryInteger  {
        print(firstNumber + T1(secondNumber)) //연산을 위해 두번째 파라미터 BinaryInteger 타입을 BinaryFloatPoint로 변환
    }
}
