import 'dart:io';

void main() {
  // Task 1: Combining strings
  stdout.write("Введите первую строку: ");
  String line1 = stdin.readLineSync()!;
  stdout.write("Введите вторую строку: ");
  String line2 = stdin.readLineSync()!;
  String combinedLine = line1 + line2;
  print("Результат объединения: $combinedLine");

  // Task 2: Flip a line
  stdout.write("Введите строку для переворота: ");
  String inputString = stdin.readLineSync()!;
  String reversedString =
      String.fromCharCodes(inputString.runes.toList().reversed);
  print("Результат переворота: $reversedString");

  // Task 3: Counting characters
  stdout.write("Введите строку для подсчета символов: ");
  String inputStringCount = stdin.readLineSync()!;
  int characterCount = inputStringCount.replaceAll(' ', '').length;
  print("Количество символов (без пробелов): $characterCount");

  // Task 4: Search for a substring
  stdout.write("Введите строку: ");
  String mainString = stdin.readLineSync()!;
  stdout.write("Введите строку для поиска: ");
  String substring = stdin.readLineSync()!;
  int index = mainString.indexOf(substring);
  if (index != -1) {
    print("Первое вхождение подстроки на позиции: $index");
  } else {
    print("Substring not found in the main string.");
  }
}
