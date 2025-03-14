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
         case "%":
             if firstNumber - firstNumber.rounded(.down) == 0 && secondNumber - secondNumber.rounded(.down) == 0 { //입력값이 정수일경우에만 연산실행 그외에는 불가 문구 반환
                 print(Int(firstNumber) % Int(secondNumber))
             } else {
                 print("나머지 연산은 정수에서면 가능합니다.")
             }
         default:
             print("연산 기호가 맞지 않습니다.")
         }
     }
 }

var calculator = Calculator()
calculator.calculate(operator: "+", firstNumber: 2, secondNumber: 15)
calculator.calculate(operator: "-", firstNumber: 4, secondNumber: 22)
calculator.calculate(operator: "*", firstNumber: 6, secondNumber: 7)
calculator.calculate(operator: "/", firstNumber: 8, secondNumber: 3)
calculator.calculate(operator: "/", firstNumber: 10, secondNumber: 3)
