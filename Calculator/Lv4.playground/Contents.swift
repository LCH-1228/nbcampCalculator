//Calculator 클래스 정의
public class Calculator {
    
    // operation 변수에 Operation 프로토콜 할당
    var operation: Operation
    
    //operation init
    init(operation: Operation) {
        self.operation = operation
    }
    
    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    func printResult(_ firstNumber: Double, _ secondNumber: Double) {
        do {
            try operation.calculate(firstNumber, secondNumber)
        } catch (let error) {
            switch error as! CustomError {
            case .devideZero:
                print("0을 \(secondNumber)로 나눌 수 없습니다.")
            case .devidedByZero:
                print("\(firstNumber)를 0으로 나눌 수 없습니다.")
            case .remaindZero:
                print("0을 \(secondNumber)로 나머지 계산할 수 없습니다.")
            case .remaindByZero:
                print("\(firstNumber)를 0으로 나머지 계산할 수 없습니다.")
            case .remainderOperationNotInteger:
                print("정수가 아닌 숫자는 나머지 계산이 불가능합니다")
            }
        }
    }
}

var firstNumber: Double = 5
var operation: String = "%"
var secondNumber: Double = 0

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
