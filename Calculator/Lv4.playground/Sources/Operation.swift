// Operation 프로토콜 정의
public protocol Operation {
    
    // Operation 프로토콜에서 정의된 calculate 메서드로 입력된 두 파라미터의 타입이 BinaryInteger로 동일한 경우에 동작
    func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryInteger
    
    // Operation 프로토콜에서 정의된 calculate 메서드로 입력된 두 파라미터의 타입이 BinaryFloatingPoint로 동일한 경우에 동작
    func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryFloatingPoint
    
    // Operation 프로토콜에서 정의된 calculate 메서드로 입력된 첫번째 파라미터의 타입이 BinaryInteger이고 두번째 파라미터의 타입이 BinaryFloatingPoint 경우에 동작
    func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryInteger, T2: BinaryFloatingPoint
    
    // Operation 프로토콜에서 정의된 calculate 메서드로 입력된 첫번째 파라미터의 타입이 BinaryFloatingPoint이고 두번째 파라미터의 타입이 BinaryInteger 경우에 동작
    func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryFloatingPoint, T2: BinaryInteger
}
