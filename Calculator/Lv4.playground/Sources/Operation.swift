// Operation 프로토콜 정의
public protocol Operation {
    
    // Operation 프로토콜에서 정의된 calculate 메서드
    func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryInteger
    
    func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryFloatingPoint
    
    // Operation 프로토콜에서 정의된 calculate 메서드
    func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryInteger, T2: BinaryFloatingPoint

    func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryFloatingPoint, T2: BinaryInteger
}
