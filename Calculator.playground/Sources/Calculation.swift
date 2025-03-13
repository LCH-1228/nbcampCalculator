// Calculation 프로토콜 정의
public protocol Calculation {
    
    // Calculation 프로토콜에서 정의된 calculate 메서드
    func calculate(`operation`: String, _ firstNumber: Double, _ secondNumber: Double)
}

// Calculation 프로토콜을 확장
public extension Calculation {
    
    // calculate 메서드의 operation 파라미터에 초기값을 할당해 operation 파라미터를 선택적으로 지정 가능하도록 정의
    func calculate(`operation`: String = "", _ firstNumber: Double, _ secondNumber: Double) {}
}
