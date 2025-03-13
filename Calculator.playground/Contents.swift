import Foundation

//Calculation 프로토콜을 채택하는 클래스 Calculator 정의
public class Calculator {
    
    // 프로퍼티에 4칙 연산 class를 인스턴스로 할당.
    var operation: Calculation
    
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
