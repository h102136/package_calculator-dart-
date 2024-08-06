import 'package:package_calculator/package_calculator.dart';

void main() {
  InputHandler inputHandler = InputHandler();
  Calculator calculator = Calculator();

  while (true) {
    String expression = inputHandler.getExpression();
    double result = calculator.evaluateExpression(expression);
    print("The result of the expression is: $result");
  }
}
