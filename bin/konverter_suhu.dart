import 'package:konverter_suhu/konverter_suhu.dart' as konverter_suhu;
import 'dart:io';

void main() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  int fahrenheit = int.parse(stdin.readLineSync()!);
  double celcius = (fahrenheit - 32) * 5 / 9;
  print('$fahrenheit derajat Fahrenheit = $celcius derajat celcius');
}
