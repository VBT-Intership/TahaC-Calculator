import 'dart:io';

class Calculator{
  int firstNumber;
  int secondNumber;
  sum(int firstNumber, int secondNumber) {
    int total = firstNumber + secondNumber;
    print("Toplam Sonucu: $total");
  }

  odd(int firstNumber, int secondNumber) {
    int total = firstNumber - secondNumber;
    print("Fark Sonucu: $total");
  }

  multi(int firstNumber, int secondNumber) {
    int total = firstNumber * secondNumber;
    print("Çarpım Sonucu: $total");
  }

  div(int firstNumber, int secondNumber) {
    if (secondNumber == 0) {
      print("Bölen 0 olamaz");
    } else {
      double total = firstNumber / secondNumber;
      print("Bölümün Sonucu: $total");
    }
  }

  numSelect() {
    stdout.write("İlk sayıyı giriniz: ");
    firstNumber = int.parse(stdin.readLineSync());
    stdout.write("İkinci sayıyı giriniz: ");
    secondNumber = int.parse(stdin.readLineSync());

  }

  void consoleScreen() {
    stdout.write(
        "-Yapmak İstediğiniz İşlem-\n 1-Toplama\n 2-Çıkarma\n 3-Çarpma\n 4-Bölme\n 5-Çıkış\n İşleminiz : ");
    var choice = stdin.readLineSync();
    choice=="5" ? exit(0) : numSelect();
    switch (choice) {
      case "1":
        {
          sum(firstNumber, secondNumber);
          consoleScreen();
          break;
        }
      case "2":
        {
          odd(firstNumber, secondNumber);
          consoleScreen();
          break;
        }
      case "3":
        {
          multi(firstNumber, secondNumber);
          consoleScreen();
          break;
        }
      case "4":
        {
          div(firstNumber, secondNumber);
          consoleScreen();

          break;
        }

      default:
        {
          print("Hatalı işlem yapıldı.");
        }
    }
  }
}

