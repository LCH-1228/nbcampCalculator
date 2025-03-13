//Calculation 프로토콜을 채택하는 클래스 Calculator 정의
class Calculator: Calculation {
    
    // 프로퍼티에 4칙 연산 class를 인스턴스로 할당.
    var addOperation = AddOperation()
    var subtractOperation = SubtractOperation()
    var multiplyOperation = MultiplyOperation()
    var divideOperation = DivideOperation()
    var remainderOperation = RemainderOperation()
        
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    enum CustomError: String, Error {
        case operationNotMatching
    }
    
    //operation에서 할당된 String으로 프로퍼티에서 할당된 4칙연산 인스턴스 중 1개를 호출하여 연산된 값을 반환 받아 출력하는 Calculation 프로토콜을 따르는 calculate 메서드
    func calculate(`operation`: String, _ firstNumber: Double, _ secondNumber: Double) {
        
        // do-catch 사용으로 operation에 다른문자가 들어오면 오류처리
        do {
            if operation == "+" {
                addOperation.calculate(firstNumber, secondNumber)
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
