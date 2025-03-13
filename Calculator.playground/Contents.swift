//Calculator 클래스 정의
public class Calculator {
    
    // operation 변수에 Calculation 프로토콜 채택
    var operation: Calculation
    
    //operation init
    init(operation: Calculation) {
        self.operation = operation
    }
    
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    enum CustomError: String, Error {
        case operationNotMatching
    }
    
    func printResult(_ firstNumber: Double, _ secondNumber: Double) {
        operation.calculate(firstNumber, secondNumber)
    }
}

var firstNumber: Double = 1
var operation: String = "+"
var secondNumber: Double = 2

var calculator: Calculator!

switch operation {
case "+":
    calculator = Calculator(operation: AddOperation())
case "-":
    calculator = Calculator(operation: SubtractOperation())
case "*":
    calculator = Calculator(operation: MultiplyOperation())
case "/":
    calculator = Calculator(operation: DivideOperation())
case "%":
    calculator = Calculator(operation: RemainderOperation())
default:
    print("연산가능한 기호가 아닙니다.")
}

calculator.printResult(firstNumber, secondNumber)
