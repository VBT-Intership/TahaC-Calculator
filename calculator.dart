import 'dart:io';

class Calculator{
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
    var firstNumber = int.parse(stdin.readLineSync());
    stdout.write("İkini sayıyı giriniz: ");
    int secondNumber = int.parse(stdin.readLineSync());
    consoleScreen(firstNumber, secondNumber);
  }

  void consoleScreen(int firstNumber, int secondNumber) {
    stdout.write(
        "-Yapmak İstediğiniz İşlem-\n 1-Toplama\n 2-Çıkarma\n 3-Çarpma\n 4-Bölme\n İşleminiz : ");
    var islem = stdin.readLineSync();
    switch (islem) {
      case "1":
        {
          sum(firstNumber, secondNumber);
          break;
        }
      case "2":
        {
          odd(firstNumber, secondNumber);
          break;
        }
      case "3":
        {
          multi(firstNumber, secondNumber);
          break;
        }
      case "4":
        {
          div(firstNumber, secondNumber);
          break;
        }
      default:
        {
          print("Hatalı işlem yapıldı.");
        }
    }
  }
}

