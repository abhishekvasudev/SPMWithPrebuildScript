import CalculatorCore

public struct Calculator {
    var text = "Hello World"
    
    public init(text: String = "Hello World") {
        self.text = text
        print("Struct Calculator init")
        let result = calculate(number1: 1, op: .plus, number2: 2)
        print("Result = \(result)")
    }
}
