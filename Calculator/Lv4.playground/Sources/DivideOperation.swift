//AbstractOperation 클래스를 상속받는 나눗셈 기능의 DivideOperation 클래스 정의
public class DivideOperation: AbstractOperation {

    // 오류처리를 위해 Error 프로토콜을 따르는 열거형 CustomError 선언
    public enum CustomError: String, Error {
        case devideZero
        case devidedByZero
        case remindOperationNotInteger
    }
    
    public override func calculate(_ firstNumber: Double, _ secondNumber: Double) {
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
