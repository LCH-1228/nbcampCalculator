//AbstractOperation 클래스를 상속받는 뺄셈 기능의 SubtractOperation 클래스 정의
public class SubtractOperation: AbstractOperation {

    public override func calculate(_ firstNumber: Double, _ secondNumber: Double) {
        print(firstNumber - secondNumber)
    }
}
