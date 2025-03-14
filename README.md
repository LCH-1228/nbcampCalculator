# Swift로 계산기 만들기

## 1. Project Overview(프로젝트 개요)
- 내일배움캠프 iOS스타터 과정 2주차 프로그래밍 기초 주차의 과제인 Swift 언어 학습 결과물입니다.

## 2. Key Features (주요 학습내용 및 기능)
1. Lv1 : [클래스 정의] - 덧셈, 뺄셈, 곱셈, 나눗셈 계산 기능
2. Lv2 : [클래스 기능 추가] - 덧셈, 뺄셈, 곱셈, 나눗셈, 나머지 계산 기능
3. Lv3 : [단일 책임의 원칙에 따른 기능별 클래스 분할 및 클래스 인스턴스 변수에서 class 참조] - 인스턴스 참조를 통한 덧셋 뺄셈 곱셈 나눗셈 계산 기능
4. Lv4 : [파일 분리를 통한 프로젝트의 구조화, 추상화된 클래스의 상속 및 외부로 부터 의존성을 주입 받기 위한 protocol 채택] - 외부로부터 의존성을 주입받기에 유연하게 확장하능한 덧셈, 뺄셈, 나눗셈, 나머지 계산이 가능한 계산기

## 3. Language
- swift ( Xcode Playground Swift 5 )

## 4. Project Structure (프로젝트 구조)
```plaintext
nbcampCalculator/
├── Calculator
│   ├── Calculator.xcodeproj
│   │   ├── project.pbxproj
│   │   └── project.xcworkspace
│   │       ├── contents.xcworkspacedata
│   │       └── xcshareddata
│   │           └── swiftpm
│   │               └── configuration
│   ├── Lv1.playground
│   │   ├── Contents.swift
│   │   └── contents.xcplayground
│   ├── Lv2.playground
│   │   ├── Contents.swift
│   │   └── contents.xcplayground
│   ├── Lv3.playground
│   │   ├── Contents.swift
│   │   └── contents.xcplayground
│   └── Lv4.playground
│       ├── Contents.swift
│       ├── Sources
│       │   ├── AbstractOperation.swift
│       │   ├── AddOperation.swift
│       │   ├── DivideOperation.swift
│       │   ├── MultiplyOperation.swift
│       │   ├── Operation.swift
│       │   ├── RemainderOperation.swift
│       │   └── SubtractOperation.swift
│       └── contents.xcplayground
└── README.md
```