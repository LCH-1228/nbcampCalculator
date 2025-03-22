// Operation 프로토콜 정의
public protocol Operation {
    
    // Operation 프로토콜에서 정의된 calculate 메서드
    func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryInteger
    
    func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryFloatingPoint
}
