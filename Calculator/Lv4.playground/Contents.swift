//Calculator 클래스 정의
public class Calculator {
    
    // operation 변수에 Operation 프로토콜 할당
    var operation: Operation
    
    //operation init
    init(operation: Operation) {
        self.operation = operation
    }
    
    //printRsult 메서드의 두입력 파라미터가 입력된 두 파라미터의 타입이 모두 Int로 동일한 경우에 호출되는 메서드
    func printResult(_ firstNumber: Int, _ secondNumber: Int) {
        do {
            try operation.calculate(firstNumber, secondNumber)
        } catch (let error) {
            switch error as! CustomError {
            case .devideZero: // DivideOperation에서 throw
                print("0을 \(secondNumber)로 나눌 수 없습니다.")
            case .devidedByZero: // DivideOperation에서 throw
                print("\(firstNumber)를 0으로 나눌 수 없습니다.")
            case .remaindZero:// RemainderOperation에서 throw
                print("0을 \(secondNumber)로 나머지 계산할 수 없습니다.")
            case .remaindByZero:// RemainderOperation에서 throw
                print("\(firstNumber)를 0으로 나머지 계산할 수 없습니다.")
            }
        }
    }
    
    //printRsult 메서드의 두입력 파라미터가 입력된 두 파라미터의 타입이 모두 Double로 동일한 경우에 호출되는 메서드
    func printResult(_ firstNumber: Double, _ secondNumber: Double) {
        do {
            try operation.calculate(firstNumber, secondNumber)
        } catch (let error) {
            switch error as! CustomError {
            case .devideZero: // DivideOperation에서 throw
                print("0을 \(secondNumber)로 나눌 수 없습니다.")
            case .devidedByZero: // DivideOperation에서 throw
                print("\(firstNumber)를 0으로 나눌 수 없습니다.")
            case .remaindZero:// RemainderOperation에서 throw
                print("0을 \(secondNumber)로 나머지 계산할 수 없습니다.")
            case .remaindByZero:// RemainderOperation에서 throw
                print("\(firstNumber)를 0으로 나머지 계산할 수 없습니다.")
            }
        }
    }
    
    //printRsult 메서드의 두입력 파라미터가 입력된 첫번째 파라미터의 타입이 Int이고 두번째 파라미터의 타입이 Double 경우에 동작
    func printResult(_ firstNumber: Int, _ secondNumber: Double) {
        do {
            try operation.calculate(firstNumber, secondNumber)
        } catch (let error) {
            switch error as! CustomError {
            case .devideZero: // DivideOperation에서 throw
                print("0을 \(secondNumber)로 나눌 수 없습니다.")
            case .devidedByZero: // DivideOperation에서 throw
                print("\(firstNumber)를 0으로 나눌 수 없습니다.")
            case .remaindZero:// RemainderOperation에서 throw
                print("0을 \(secondNumber)로 나머지 계산할 수 없습니다.")
            case .remaindByZero:// RemainderOperation에서 throw
                print("\(firstNumber)를 0으로 나머지 계산할 수 없습니다.")
            }
        }
    }
    
    //printRsult 메서드의 두입력 파라미터가 입력된 첫번째 파라미터의 타입이 Double이고 두번째 파라미터의 타입이 Int 경우에 동작
    func printResult(_ firstNumber: Double, _ secondNumber: Int) {
        do {
            try operation.calculate(firstNumber, secondNumber)
        } catch (let error) {
            switch error as! CustomError {
            case .devideZero: // DivideOperation에서 throw
                print("0을 \(secondNumber)로 나눌 수 없습니다.")
            case .devidedByZero: // DivideOperation에서 throw
                print("\(firstNumber)를 0으로 나눌 수 없습니다.")
            case .remaindZero:// RemainderOperation에서 throw
                print("0을 \(secondNumber)로 나머지 계산할 수 없습니다.")
            case .remaindByZero:// RemainderOperation에서 throw
                print("\(firstNumber)를 0으로 나머지 계산할 수 없습니다.")
            }
        }
    }
}

var firstNumber: Double = 5
var operation: String = "%"
var secondNumber: Int = 3

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
