class Calculator {
 
     func calculate(operator: String, firstNumber: Double, secondNumber: Double) {
         switch `operator` {
         case "+":
             print(firstNumber + secondNumber)
         case "-":
             print(firstNumber - secondNumber)
         case "/":
             if firstNumber == 0 {
                 print("0을 \(secondNumber)로 나눌 수 없습니다.")
             } else if secondNumber == 0 {
                 print("\(firstNumber)를 0으로 나눌 수 없습니다.")
             } else {
                 print(firstNumber / secondNumber)
             }
         case "*":
             print(firstNumber * secondNumber)
         default:
             print("연산 기호가 맞지 않습니다.")
         }
     }
 }

var calculator = Calculator()
calculator.calculate(operator: "+", firstNumber: 1, secondNumber: 3)
calculator.calculate(operator: "-", firstNumber: 5, secondNumber: 7)
calculator.calculate(operator: "*", firstNumber: 9, secondNumber: 3)
calculator.calculate(operator: "/", firstNumber: 10, secondNumber: 20)
