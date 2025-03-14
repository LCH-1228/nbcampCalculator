class Calculator {
    
    // 프로퍼티에 4칙연산, 나머지 연산 class를 할당.
    var addoperation = Addoperation()
    var subtractOperation = SubtractOperation()
    var multiplyOperation = MultiplyOperation()
    var divideOperation = DivideOperation()
    
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    private enum CustomError: String, Error {
        case operationNotMatching
    }
    
    // 연산 결과 출력 메서드
    func calculate(operation: String, firstNumber: Double, secondNumber: Double) {
        
        // do-catch 사용으로 operation에 다른문자가 들어오면 오류처리
        do {
            if operation == "+" {
                addoperation.calculate(firstNumber, secondNumber)
            } else if operation == "-" {
                subtractOperation.calculate(firstNumber, secondNumber)
            } else if operation == "*" {
                multiplyOperation.calculate(firstNumber, secondNumber)
            } else if operation == "/" {
                divideOperation.calculate(firstNumber, secondNumber)
            } else {
                throw CustomError.operationNotMatching //그이외의 경우에는 오류 throw
            }
        } catch(let error) { // throw한 오류 catch
            print("Error", error as! CustomError) // 사전에 정의된 CustomError 출력
        }
    }
}

// 더하기 연산 클래스
class Addoperation {
     
    func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber + secondNumber)
    }
}

// 빼기 연산 클래스
class SubtractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber - secondNumber)
    }
}

// 곱하기 연산 클래스
class MultiplyOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber * secondNumber)
    }
}

// 나누기 연산 클래스
class DivideOperation {
    
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    enum CustomError: String, Error {
        case devideZero
        case devidedByZero
        case remindOperationNotInteger
    }
     
    func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        do {
            if firstNumber == 0 {
                throw CustomError.devideZero
            } else if secondNumber == 0 {
                throw CustomError.devidedByZero
            } else {
                print(firstNumber / secondNumber)
            }
        } catch(let error) {
            print("Error:",error as! CustomError)
        }
    }
}

var calculator = Calculator()
calculator.addoperation.calculate(10, 20)
calculator.subtractOperation.calculate(7, -5)
calculator.multiplyOperation.calculate(9, 8)
calculator.divideOperation.calculate(9, 6)
