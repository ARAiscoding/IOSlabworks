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

// import 'dart:io';

// class Book {
//   String title;
//   String author;
//   int year;
//   int numPages;

//   Book(this.title, this.author, this.year, this.numPages);

//   void displayInfo() {
//     print('Title: $title');
//     print('Author: $author');
//     print('Year: $year');
//     print('Number of pages: $numPages');
//   }
// }

// class Library {
//   List<Book> books = [];

//   void addBook(String title, String author, int year, int numPages) {
//     var book = Book(title, author, year, numPages);
//     books.add(book);
//     print("Book '$title' added to the library.");
//   }

//   void removeBook(String title) {
//     var initialLength = books.length;
//     books.removeWhere((book) => book.title == title);
//     var finalLength = books.length;
//     if (finalLength == initialLength) {
//       print("Book with title '$title' not found in the library.");
//     } else {
//       print("Book '$title' removed from the library.");
//     }
//   }

//   void displayBooks() {
//     if (books.isEmpty) {
//       print("The library is empty.");
//       return;
//     }
//     print("Books available in the library:");
//     for (var i = 0; i < books.length; i++) {
//       print("Book ${i + 1}:");
//       print("-" * 30);
//       books[i].displayInfo();
//       print("-" * 30);
//     }
//   }
// }

// void main() {
//   var library = Library();
//   var choice = '';

//   while (choice != '4') {
//     print(
//         "\nВыберите действие: (1) Добавить книгу, (2) Удалить книгу, (3) Показать книги, (4) Выйти");
//     choice = stdin.readLineSync() ?? '';

//     switch (choice) {
//       case '1':
//         print("Введите заголовок книги:");
//         var title = stdin.readLineSync() ?? '';
//         print("Введите автора книги:");
//         var author = stdin.readLineSync() ?? '';
//         print("Введите год выпуска книги:");
//         var year = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
//         print("Введите количество страниц книги:");
//         var numPages = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
//         library.addBook(title, author, year, numPages);
//         break;
//       case '2':
//         print("Введите заголовок книги для удаления:");
//         var title = stdin.readLineSync() ?? '';
//         library.removeBook(title);
//         break;
//       case '3':
//         library.displayBooks();
//         break;
//       case '4':
//         print("Выход из программы.");
//         break;
//       default:
//         print("Некорректный выбор. Пожалуйста, выберите действие снова.");
//         break;
//     }
//   }
// }
/* LABORATORY WORK 3 */
/* FIRST PROBLEM */
// import 'dart:io';

// // Student structure
// class Student {
//   final String firstName;
//   final String lastName;
//   final double averageGrade;

//   Student(this.firstName, this.lastName, this.averageGrade);

//   // Computed property to get full name
//   String get fullName => '$firstName $lastName';
// }

// // Journal (Student Journal)
// class StudentJournal {
//   List<Student> students = [];

//   // Method to add a new student to the journal
//   void addStudent(
//       {required String firstName,
//       required String lastName,
//       required double averageGrade}) {
//     var student = Student(firstName, lastName, averageGrade);
//     students.add(student);
//   }

//   // Method to remove a student from the journal by first and last name
//   void removeStudent(String firstName, String lastName) {
//     students.removeWhere((student) =>
//         student.firstName == firstName && student.lastName == lastName);
//   }

//   // Method to display information about all students in a journal
//   void displayStudentsInfo() {
//     print("Students in the journal:");
//     for (var student in students) {
//       print(
//           "Name: ${student.fullName}, Average Grade: ${student.averageGrade}");
//     }
//   }

//   // Method to list the students in descending order of their GPA
//   void listStudentsByDescendingGPA() {
//     students.sort((a, b) => b.averageGrade.compareTo(a.averageGrade));
//     print("Students in descending order of GPA:");
//     for (var student in students) {
//       print(
//           "Name: ${student.fullName}, Average Grade: ${student.averageGrade}");
//     }
//   }

//   // Method to find the average score of all students in a journal
//   double averageGradeOfAllStudents() {
//     var totalGrade =
//         students.fold(0.0, (sum, student) => sum + student.averageGrade);
//     return totalGrade / students.length;
//   }

//   // Method to find the student with the highest GPA
//   Student? studentWithHighestGPA() {
//     if (students.isEmpty) return null;
//     return students.reduce(
//         (curr, next) => curr.averageGrade > next.averageGrade ? curr : next);
//   }
// }

// // Function to get user input
// String getInput(String prompt) {
//   stdout.write(prompt);
//   return stdin.readLineSync() ?? '';
// }

// // Main function
// void main() {
//   var journal = StudentJournal();

//   while (true) {
//     print(
//         "\n1. Add Student\n2. Remove Student\n3. Display Students Info\n4. List Students by Descending GPA\n5. Average Grade of all Students\n6. Student with Highest GPA\n7. Exit");
//     var choice = getInput("Enter your choice:");

//     switch (choice) {
//       case "1":
//         var firstName = getInput("Enter First Name:");
//         var lastName = getInput("Enter Last Name:");
//         var averageGrade =
//             double.tryParse(getInput("Enter Average Grade:")) ?? 0.0;
//         journal.addStudent(
//             firstName: firstName,
//             lastName: lastName,
//             averageGrade: averageGrade);
//         break;
//       case "2":
//         var firstName = getInput("Enter First Name:");
//         var lastName = getInput("Enter Last Name:");
//         journal.removeStudent(firstName, lastName);
//         break;
//       case "3":
//         journal.displayStudentsInfo();
//         break;
//       case "4":
//         journal.listStudentsByDescendingGPA();
//         break;
//       case "5":
//         print(
//             "Average Grade of all students: ${journal.averageGradeOfAllStudents()}");
//         break;
//       case "6":
//         var highestGPAStudent = journal.studentWithHighestGPA();
//         if (highestGPAStudent != null) {
//           print(
//               "Student with highest GPA: ${highestGPAStudent.fullName}, Average Grade: ${highestGPAStudent.averageGrade}");
//         } else {
//           print("No students found.");
//         }
//         break;
//       case "7":
//         exit(0);
//       default:
//         print("Invalid choice.");
//     }
//   }
// }
/* LABORATORY WORK 3 */
/* SECOND PROBLEM */
import 'dart:io';

// Структура задачи
class Task {
  final String title;
  final String description;
  bool isCompleted;

  // Конструктор
  Task(this.title, this.description)
      : isCompleted = false; // По умолчанию задача не завершена
}

// Список дел (ToDoList)
class ToDoList {
  List<Task> tasks = [];

  // Метод добавления новой задачи в список
  void addTask({required String title, required String description}) {
    var task = Task(title, description);
    tasks.add(task);
  }

  // Метод удаления задачи из списка по имени
  void removeTask(String title) {
    tasks.removeWhere((task) => task.title == title);
  }

  // Метод изменения статуса выполнения задачи
  void toggleTaskCompletion(String title) {
    var task = tasks.firstWhere((task) => task.title == title,
        orElse: () => Task('', ''));
    task.isCompleted = !task.isCompleted;
  }

  // Метод отображения информации обо всех задачах в списке
  void displayAllTasks() {
    print("All Tasks:");
    for (var task in tasks) {
      print(
          "Title: ${task.title}, Description: ${task.description}, Completed: ${task.isCompleted ? "Yes" : "No"}");
    }
  }

  // Метод поиска и отображения всех выполненных задач
  void displayCompletedTasks() {
    var completedTasks = tasks.where((task) => task.isCompleted);
    print("Completed Tasks:");
    for (var task in completedTasks) {
      print("Title: ${task.title}, Description: ${task.description}");
    }
  }

  // Метод поиска и отображения всех невыполненных задач
  void displayIncompleteTasks() {
    var incompleteTasks = tasks.where((task) => !task.isCompleted);
    print("Incomplete Tasks:");
    for (var task in incompleteTasks) {
      print("Title: ${task.title}, Description: ${task.description}");
    }
  }

  // Метод очистки списка выполненных задач
  void clearCompletedTasks() {
    tasks.removeWhere((task) => task.isCompleted);
  }
}

// Функция для получения ввода пользователя
String getInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync() ?? '';
}

// Основная функция
void main() {
  var toDoList = ToDoList();

  while (true) {
    print(
        "\n1. Add Task\n2. Remove Task\n3. Toggle Task Completion\n4. Display All Tasks\n5. Display Completed Tasks\n6. Display Incomplete Tasks\n7. Clear Completed Tasks\n8. Exit");
    var choice = getInput("Enter your choice:");

    switch (choice) {
      case "1":
        var title = getInput("Enter Task Title:");
        var description = getInput("Enter Task Description:");
        toDoList.addTask(title: title, description: description);
        break;
      case "2":
        var title = getInput("Enter Task Title:");
        toDoList.removeTask(title);
        break;
      case "3":
        var title = getInput("Enter Task Title:");
        toDoList.toggleTaskCompletion(title);
        break;
      case "4":
        toDoList.displayAllTasks();
        break;
      case "5":
        toDoList.displayCompletedTasks();
        break;
      case "6":
        toDoList.displayIncompleteTasks();
        break;
      case "7":
        toDoList.clearCompletedTasks();
        break;
      case "8":
        exit(0);
      default:
        print("Invalid choice.");
    }
  }
}
