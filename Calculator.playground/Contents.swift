class Calculator {

    func calculate(operator: String, firstNumber: Double, secondNumber: Double) {
        switch `operator` {
        case "+":
            print(firstNumber + secondNumber)
        case "-":
            print(firstNumber - secondNumber)
        case "/":
            print(firstNumber / secondNumber)
        case "*":
            print(firstNumber * secondNumber)
        default:
            print("연산 기호가 맞지 않습니다.")
        }
    }
}
