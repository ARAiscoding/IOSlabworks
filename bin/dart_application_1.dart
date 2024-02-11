/* LABORATORY WORK 1 */ 
/* FIRST PROBLEM */
// import 'dart:io';

// import 'dart:math';


// double add(double a, double b) {
//   return a + b;
// }


// double subtract(double a, double b) {
//   return a - b;
// }


// double multiply(double a, double b) {
//   return a * b;
// }


// double? divide(double a, double b) {
//   if (b == 0) {
//     print("Error: Cannot divide by zero");
//     return null;
//   }
//   return a / b;
// }


// double power(double base, double exponent) {
//   return pow(base, exponent).toDouble();
// }


// double? squareRoot(double value) {
//   if (value < 0) {
//     print("Error: Cannot calculate square root of a negative number");
//     return null;
//   }
//   return sqrt(value);
// }

// void main() {

//   print("Введите число:");
//   var num1 = double.parse(stdin.readLineSync()!);


//   print("Введите оператор (+, -, *, /, ^, sqrt):");
//   var operatorSymbol = stdin.readLineSync();

 
//   print("Введите число::");
//   var num2 = double.parse(stdin.readLineSync()!);

//   double? result;


//   switch (operatorSymbol) {
//     case "+":
//       result = add(num1, num2);
//       break;
//     case "-":
//       result = subtract(num1, num2);
//       break;
//     case "*":
//       result = multiply(num1, num2);
//       break;
//     case "/":
//       result = divide(num1, num2);
//       break;
//     case "^":
//       result = power(num1, num2);
//       break;
//     case "sqrt":
//       result = squareRoot(num1);
//       break;
//     default:
//       print("Error: Invalid operator");
//       return;
//   }

//   // Print the result if not null
//   if (result != null) {
//     print("Результат: $result");
//   }
// }






/* LABORATORY WORK 1 */
/* SECOND PROBLEM */
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





/* LABORATORY WORK 2 */
/* FIRST PROBLEM */

// import 'dart:io';

// class BankAccount {
//   String accountNumber;
//   String accountOwner;
//   double balance;

//   BankAccount(this.accountNumber, this.accountOwner, this.balance);

//   void deposit(double amount) {
//     if (amount > 0) {
//       balance += amount;
//       print("Депозит на сумму $amount успешно проведен.");
//     } else {
//       print("Ошибка: Невозможно провести депозит с отрицательной суммой.");
//     }
//   }

//   void withdraw(double amount) {
//     if (amount > 0 && amount <= balance) {
//       balance -= amount;
//       print("Снятие на сумму $amount успешно проведено.");
//     } else {
//       print("Ошибка: Недостаточно средств для снятия или сумма отрицательная.");
//     }
//   }

//   double getBalance() {
//     return balance;
//   }

//   void accountInfo() {
//     print("Номер счета: $accountNumber");
//     print("Владелец счета: $accountOwner");
//     print("Текущий баланс: $balance");
//   }
// }

// void main() {
//   stdout.write("Введите номер счета: ");
//   String accountNumber = stdin.readLineSync()!;

//   stdout.write("Введите имя владельца счета: ");
//   String accountOwner = stdin.readLineSync()!;

//   stdout.write("Введите начальный баланс: ");
//   double initialBalance = double.parse(stdin.readLineSync()!);

//   var account1 = BankAccount(accountNumber, accountOwner, initialBalance);
//   account1.accountInfo(); // Отобразить информацию о счете

//   stdout.write("Введите сумму для депозита: ");
//   double depositAmount = double.parse(stdin.readLineSync()!);
//   account1.deposit(depositAmount); // Внести депозит

//   stdout.write("Введите сумму для снятия: ");
//   double withdrawAmount = double.parse(stdin.readLineSync()!);
//   account1.withdraw(withdrawAmount); // Снять со счета

//   print("Текущий баланс: ${account1.getBalance()}"); // Получить текущий баланс
// }


/* LABORATORY WORK 2 */
/* SECOND PROBLEM */

import 'dart:io';

class Book {
  String title;
  String author;
  int year;
  int numPages;

  Book(this.title, this.author, this.year, this.numPages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    print('Number of pages: $numPages');
  }
}

class Library {
  List<Book> books = [];

  void addBook(String title, String author, int year, int numPages) {
    var book = Book(title, author, year, numPages);
    books.add(book);
    print("Book '$title' added to the library.");
  }

  void removeBook(String title) {
    var initialLength = books.length;
    books.removeWhere((book) => book.title == title);
    var finalLength = books.length;
    if (finalLength == initialLength) {
      print("Book with title '$title' not found in the library.");
    } else {
      print("Book '$title' removed from the library.");
    }
  }

  void displayBooks() {
    if (books.isEmpty) {
      print("The library is empty.");
      return;
    }
    print("Books available in the library:");
    for (var i = 0; i < books.length; i++) {
      print("Book ${i + 1}:");
      print("-" * 30);
      books[i].displayInfo();
      print("-" * 30);
    }
  }
}

void main() {
  var library = Library();
  var choice = '';

  while (choice != '4') {
    print(
        "\nВыберите действие: (1) Добавить книгу, (2) Удалить книгу, (3) Показать книги, (4) Выйти");
    choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        print("Введите заголовок книги:");
        var title = stdin.readLineSync() ?? '';
        print("Введите автора книги:");
        var author = stdin.readLineSync() ?? '';
        print("Введите год выпуска книги:");
        var year = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        print("Введите количество страниц книги:");
        var numPages = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        library.addBook(title, author, year, numPages);
        break;
      case '2':
        print("Введите заголовок книги для удаления:");
        var title = stdin.readLineSync() ?? '';
        library.removeBook(title);
        break;
      case '3':
        library.displayBooks();
        break;
      case '4':
        print("Выход из программы.");
        break;
      default:
        print("Некорректный выбор. Пожалуйста, выберите действие снова.");
        break;
    }
  }
}
