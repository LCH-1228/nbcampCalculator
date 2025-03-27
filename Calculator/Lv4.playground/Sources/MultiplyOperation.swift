//Operation 프로토콜을 채택하는 곱셈 기능의 MultiplyOperation 클래스 정의
public class MultiplyOperation: Operation {
    
    public init() {
        
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 두 파라미터의 타입이 모두 BinaryInteger로 동일한 경우에 곱하기 연산
    public func calculate<T: BinaryInteger>(_ firstNumber: T, _ secondNumber: T) throws -> Double {
        return Double(firstNumber * secondNumber)
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 두 파라미터의 타입이 모두 FloatingPoint로 동일한 경우에 곱하기 연산
    public func calculate<T: FloatingPoint>(_ firstNumber: T, _ secondNumber: T) throws -> Double {
        return (firstNumber * secondNumber).toDouble
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 첫번째 파라미터의 타입이 BinaryInteger이고 두번째 파라미터의 타입이 FloatingPoint 경우에 곱하기 연산
    public func calculate<T1: BinaryInteger, T2: FloatingPoint>(_ firstNumber: T1, _ secondNumber: T2) throws -> Double {
        return Double(firstNumber) * secondNumber.toDouble //연산을 위해 첫번째 파라미터 BinaryInteger 타입을 BinaryFloatPoint로 변환
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 첫번째 파라미터의 타입이 FloatingPoint이고 두번째 파라미터의 타입이 BinaryInteger 경우에 곱하기 연산
    public func calculate<T1: FloatingPoint, T2: BinaryInteger>(_ firstNumber: T1, _ secondNumber: T2) throws -> Double {
        return firstNumber.toDouble * Double(secondNumber) //연산을 위해 두번째 파라미터 BinaryInteger 타입을 BinaryFloatPoint로 변환
    }
    
    // Operation 프로토콜에서 정의된 calculate의 구현부로 입력된 첫번째 파라미터의 타입이 FloatingPoint이고 두번째 파라미터의 타입이 FloatingPoint 경우에 곱하기 연산
    public func calculate<T1: FloatingPoint, T2: FloatingPoint>(_ firstNumber: T1, _ secondNumber: T2) throws -> Double {
        return firstNumber.toDouble * secondNumber.toDouble //연산을 위해 두번째 파라미터 BinaryInteger 타입을 BinaryFloatPoint로 변환
    }
}
