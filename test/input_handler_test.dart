import 'package:test/test.dart';
import 'package:package_calculator/src/input_handler.dart'; // Import the file containing the Calculator class

void main() {group('InputHandler', () {
    late InputHandler inputHandler;

    setUp(() {
      inputHandler = InputHandler();
    });
    // test valid expressions
    test('validateExpression should return true for valid expressions', () {
      expect(inputHandler.validateExpression("5+3-2"), isTrue);
      expect(inputHandler.validateExpression("(7+8.5)*5-9/3"), isTrue);
      expect(inputHandler.validateExpression("3.5*2-1/2"), isTrue);
    });
    // test invalid expressions (with invaild characters)
    test('validateExpression should return false for expressions with invalid characters', () {
      expect(inputHandler.validateExpression("5+3-2a"), isFalse);
      expect(inputHandler.validateExpression("(7+8.5)*5-9/3!"), isFalse);
      expect(inputHandler.validateExpression("3.5*2-1/2@"), isFalse);
    });
    // test invalid expressions (with consecutive operators)
    test('validateExpression should return false for expressions with consecutive operators', () {
      expect(inputHandler.validateExpression("5++3--2"), isFalse);
      expect(inputHandler.validateExpression("(7+8.5)**5-9//3"), isFalse);
      expect(inputHandler.validateExpression("3.5*2--1/2"), isFalse);
    });
    // test invalid expressions (with trailing operators)
    test('validateExpression should return false for expressions with trailing operators', () {
      expect(inputHandler.validateExpression("5+3-"), isFalse);
      expect(inputHandler.validateExpression("(7+8.5)*5-"), isFalse);
      expect(inputHandler.validateExpression("3.5*2/"), isFalse);
    });
    // test invalid expressions (with unmatched parentheses)
    test('validateExpression should return false for expressions with unmatched parentheses', () {
      expect(inputHandler.validateExpression("5+(3-2"), isFalse);
      expect(inputHandler.validateExpression("((7+8.5)*5-9/3"), isFalse);
      expect(inputHandler.validateExpression("3.5*(2-1/2"), isFalse);
    });
    // test valid expressions (with balanced parentheses)
    test('validateExpression should return true for expressions with balanced parentheses', () {
      expect(inputHandler.validateExpression("5+(3-2)"), isTrue);
      expect(inputHandler.validateExpression("((7+8.5)*5-9)/3"), isTrue);
      expect(inputHandler.validateExpression("3.5*(2-1)/2"), isTrue);
    });
  });
}