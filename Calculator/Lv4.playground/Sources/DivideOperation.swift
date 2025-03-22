//AbstractOperation 클래스를 상속받는 나눗셈 기능의 DivideOperation 클래스 정의
public class DivideOperation: Operation {
    
    
    public init() {
        
    }
    
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryInteger {
        if firstNumber == 0 {
            throw CustomError.devideZero
        } else if secondNumber == 0 {
            throw CustomError.devidedByZero
        } else {
            print(firstNumber / secondNumber)
        }

    }
    
    public func calculate<T>(_ firstNumber: T, _ secondNumber: T) throws where T: BinaryFloatingPoint {
        if firstNumber == 0 {
            throw CustomError.devideZero
        } else if secondNumber == 0 {
            throw CustomError.devidedByZero
        } else {
            print(firstNumber / secondNumber)
        }
    }
    
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryInteger, T2: BinaryFloatingPoint  {
        if firstNumber == 0 {
            throw CustomError.devideZero
        } else if secondNumber == 0 {
            throw CustomError.devidedByZero
        } else {
            print(T2(firstNumber) / secondNumber)
        }
        
    }
    
    public func calculate<T1, T2>(_ firstNumber: T1, _ secondNumber: T2) throws where T1: BinaryFloatingPoint, T2: BinaryInteger  {
        if firstNumber == 0 {
            throw CustomError.devideZero
        } else if secondNumber == 0 {
            throw CustomError.devidedByZero
        } else {
            print(firstNumber / T1(secondNumber))
        }
    }
    
    
}
