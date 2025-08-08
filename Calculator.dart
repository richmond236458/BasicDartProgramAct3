import 'dart:io';

void main() {
  UserInput();
}

void UserInput() {
  print("Basic calculator in Dart programming");
  print("=======================================");
  print("Enter your first number:");

  try {
    int num1 = int.parse(stdin.readLineSync()!);
    print("Enter your second number:");
    int num2 = int.parse(stdin.readLineSync()!);

   
    addition(num1, num2);
    subtraction(num1, num2);
    multiplication(num1, num2);
    division(num1, num2);
  } catch (e) {
    print("Invalid input. Please enter a valid integer.");
  }
}

void addition(int num1, int num2) {
  int result = num1 + num2;
  print("The result of addition: $num1 + $num2 = $result");
}

void subtraction(int num1, int num2) {
  int result = num1 - num2;
  print("The result of subtraction: $num1 - $num2 = $result");
}

void multiplication(int num1, int num2) {
  int result = num1 * num2;
  print("The result of multiplication: $num1 * $num2 = $result");
}

void division(int num1, int num2) {
 
  if (num2 != 0) {
   
    double doubleResult = num1 / num2; 
    int intResult = num1 ~/ num2;
    print("The result of division (double): $num1 / $num2 = $doubleResult");
    print("The result of division (integer): $num1 ~/ $num2 = $intResult");
  } else {
    print("Cannot divide by zero.");
  }
}