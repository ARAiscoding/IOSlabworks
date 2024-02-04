import 'dart:io';

import 'dart:math';


double add(double a, double b) {
  return a + b;
}


double subtract(double a, double b) {
  return a - b;
}


double multiply(double a, double b) {
  return a * b;
}


double? divide(double a, double b) {
  if (b == 0) {
    print("Error: Cannot divide by zero");
    return null;
  }
  return a / b;
}


double power(double base, double exponent) {
  return pow(base, exponent).toDouble();
}


double? squareRoot(double value) {
  if (value < 0) {
    print("Error: Cannot calculate square root of a negative number");
    return null;
  }
  return sqrt(value);
}

void main() {

  print("Введите число:");
  var num1 = double.parse(stdin.readLineSync()!);


  print("Введите оператор (+, -, *, /, ^, sqrt):");
  var operatorSymbol = stdin.readLineSync();

 
  print("Введите число::");
  var num2 = double.parse(stdin.readLineSync()!);

  double? result;


  switch (operatorSymbol) {
    case "+":
      result = add(num1, num2);
      break;
    case "-":
      result = subtract(num1, num2);
      break;
    case "*":
      result = multiply(num1, num2);
      break;
    case "/":
      result = divide(num1, num2);
      break;
    case "^":
      result = power(num1, num2);
      break;
    case "sqrt":
      result = squareRoot(num1);
      break;
    default:
      print("Error: Invalid operator");
      return;
  }

  // Print the result if not null
  if (result != null) {
    print("Результат: $result");
  }
}

/* Вторая задача */
// void main() {

//   stdout.write("Введите первую строку: ");
//   String line1 = stdin.readLineSync()!;
//   stdout.write("Введите вторую строку: ");
//   String line2 = stdin.readLineSync()!;
//   String combinedLine = line1 + line2;
//   print("Результат объединения: $combinedLine");

//   stdout.write("Введите строку для переворота: ");
//   String inputString = stdin.readLineSync()!;
//   String reversedString =
//       String.fromCharCodes(inputString.runes.toList().reversed);
//   print("Результат переворота: $reversedString");

 
//   stdout.write("Введите строку для подсчета символов: ");
//   String inputStringCount = stdin.readLineSync()!;
//   int characterCount = inputStringCount.replaceAll(' ', '').length;
//   print("Количество символов (без пробелов): $characterCount");


//   stdout.write("Введите строку: ");
//   String mainString = stdin.readLineSync()!;
//   stdout.write("Введите строку для поиска: ");
//   String substring = stdin.readLineSync()!;
//   int index = mainString.indexOf(substring);
//   if (index != -1) {
//     print("Первое вхождение подстроки на позиции: $index");
//   } else {
//     print("Substring not found in the main string.");
//   }
// }
