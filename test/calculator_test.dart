import 'package:test/test.dart';
import 'package:package_calculator/src/calculator.dart'; // Import the file containing the Calculator class

void main() {
  group('Calculator', () {
    // Create an instance of the Calculator class
    late Calculator calculator;
    // Set up the calculator instance before each test and import the Calculator class
    setUp(() {
      calculator = Calculator();
    });
    // set up a function to apply all operators before each test
    void applyAllOperators(List<String> operators, List<double> values) {
      while (operators.isNotEmpty) {
        calculator.applyOperator(operators, values);
      }
    }
    // addition
    test('evaluateExpression should handle addition', () {
      String expression = "3.0+2.0";
      double result = calculator.evaluateExpression(expression);
      expect(result, 5.0); 
    });
    // subtraction
    test('evaluateExpression should handle subtraction', () {
      String expression = "1-3";
      double result = calculator.evaluateExpression(expression);
      expect(result, -2.0); 
    });
    // mutiple addition
    test('evaluateExpression should handle mutiple addition', () {
      String expression = "5+3+2";
      double result = calculator.evaluateExpression(expression);
      expect(result, 10.0); 
    });
    // addition and subtraction
    test('evaluateExpression should handle mixed operators with addition and subtraction', () {
      String expression = "3+2-3";
      double result = calculator.evaluateExpression(expression);
      expect(result, 2.0); 
    });
    // multiplication
    test('evaluateExpression should handle multiplication', () {
      String expression = "3*2*3";
      double result = calculator.evaluateExpression(expression);
      expect(result, 18.0); 
    });
    // division
    test('evaluateExpression should handle division', () {
      String expression = "9/3/3";
      double result = calculator.evaluateExpression(expression);
      expect(result, 1.0); 
    });
    // multiplication and division
    test('evaluateExpression should handle mixed operators with multiplication and division', () {
      String expression = "3*2/3";
      double result = calculator.evaluateExpression(expression);
      expect(result, 2.0); 
    });
    // expression with multiple operators
    test('evaluateExpression should handle mixed operators with precedence', () {
      String expression = "5*3+2/1-3";
      double result = calculator.evaluateExpression(expression);
      expect(result, 14.0); 
    });
    // the expression with parentheses
    test('evaluateExpression should handle mixed operators with parentheses', () {
      String expression = "5*(3+2)/1-3";
      double result = calculator.evaluateExpression(expression);
      expect(result, 22.0); 
    });
  });
}