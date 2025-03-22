//AbstractOperation 클래스를 상속받는 나머지 연산 기능의 RemainderOperation 클래스 정의
public class RemainderOperation: Operation {
    
    public init() {
        
    }
    
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T : BinaryInteger {
        if firstNumber == 0 {
            throw CustomError.remaindZero
        } else if secondNumber == 0 {
            throw CustomError.remaindByZero
        } else {
            let result = firstNumber % secondNumber
            print("\(firstNumber)을(를) \(secondNumber)(으)로 나눈 나머지는 \(result)입니다.")
        }
        
    }
    
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T : BinaryFloatingPoint {
        if firstNumber == 0 {
            throw CustomError.remaindZero
        } else if secondNumber == 0 {
            throw CustomError.remaindByZero
        } else {
            let result = firstNumber.truncatingRemainder(dividingBy: secondNumber)
            print("\(firstNumber)을(를) \(secondNumber)(으)로 나눈 나머지는 \(result)입니다.")
        }
    }
    
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryInteger, T2: BinaryFloatingPoint  {
        if firstNumber == 0 {
            throw CustomError.remaindZero
        } else if secondNumber == 0 {
            throw CustomError.remaindByZero
        } else {
            let result = T2(firstNumber).truncatingRemainder(dividingBy: secondNumber)
            print("\(firstNumber)을(를) \(secondNumber)(으)로 나눈 나머지는 \(result)입니다.")
        }
    }
    
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryFloatingPoint, T2: BinaryInteger  {
        if firstNumber == 0 {
            throw CustomError.remaindZero
        } else if secondNumber == 0 {
            throw CustomError.remaindByZero
        } else {
            let result = (firstNumber).truncatingRemainder(dividingBy: T1(secondNumber))
            print("\(firstNumber)을(를) \(secondNumber)(으)로 나눈 나머지는 \(result)입니다.")
        }
    }
    
}
