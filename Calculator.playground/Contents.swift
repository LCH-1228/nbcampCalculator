class Calculator {
    
    // 프로퍼티에 4칙연산, 나머지 연산 class를 할당.
    var addoperation = Addoperation()
    var subtractOperation = SubtractOperation()
    var multiplyOperation = MultiplyOperation()
    var divideOperation = DivideOperation()
    var remainderOperation = RemainderOperation()
    
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
            } else if operation == "%" {
                remainderOperation.calculate(firstNumber, secondNumber)
            } else {
                throw CustomError.operationNotMatching //그이외의 경우에는 오류 throw
            }
        } catch(let error) { // throw한 오류 catch
            print("Error", error as! CustomError) // 사전에 정의된 CustomError 출력
        }
    }
}
