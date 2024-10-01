import "dart:io";
import "dart:math";

void main() {

  //1. feladat
  print("1. feladat\n");
  print("Add meg az 'a' oldal hosszát: ");
  int? a = int.parse(stdin.readLineSync()!);
  print("Add meg a 'b' oldal hosszát: ");
  int? b = int.parse(stdin.readLineSync()!);

  if(a > b) {
    print("A négyszög téglalap!");
    print("A 'b' oldal a kisebb!");
    print("Az 'a' oldal a nagyobb");
  }
  if(a < b) {
    print("A négyszög téglalap!");
    print("Az 'a' oldal a kisebb!");
    print("A 'b' oldal a nagyobb!");
  }
  else {
    print("A négyszög négyzet!");
    print("A két oldal ugyanolyan hosszú!");
  }

  int kerulet = (2 * a) + (2 * b);
  int terulet = a * b;

  print("A négyszög kerülete: $kerulet, területe: $terulet");

  //2. feladat
  print("\n2. feladat\n");

  print("Add meg a 'c' oldal hosszát: ");
  int? c = int.parse(stdin.readLineSync()!);
  print("Add meg a 'd' oldal hosszát: ");
  int? d = int.parse(stdin.readLineSync()!);
  print("Add meg az 'e' oldal hosszát: ");
  int? e = int.parse(stdin.readLineSync()!);

  if(c + d > e && c + e > b && d + e > c) {
    print("A három oldal alkothat háromszöget!");
  }
  else {
    print("A három oldal nem alkothat háromszöget!");
  }

  //3. feladat
  print("\n3. feladat\n");

  print("Adj meg egy háromjegyű számot: ");
  int? num = int.parse(stdin.readLineSync()!);

  while(num < 100 || num > 999) {
      int? num = int.parse(stdin.readLineSync()!);
      print("Rossz szám! Adj meg egy másikat: ");
    }
    
  double negyzetSzam = sqrt(num);

  if(negyzetSzam == negyzetSzam.toInt()) {
    print("A szám négyzetszám!");
  }
  else {
    print("A szám nem négyzetszám!");
  }

  int osztok = 0;

  for(int i = 2; i < num - 1; i++) {
    if(num % i != 0) {
    }
    else {
      osztok++;
    }
  }

  if(osztok == 0) {
    print("A szám prímszám!");
  }
  else {
    print("A szám nem prímszám!");
  }

  //4. feladat
  print("\n4. feladat\n");

  print("Adj meg egy számot: ");
  int? szam = int.parse(stdin.readLineSync()!);

  if(szam == 0) {
    throw ArgumentError("Nulla bevitel!");
  }

  double kerekitendo = 100 / szam;
  String ketTizedes = kerekitendo.toStringAsFixed(2);
  
  print("$ketTizedes");
}