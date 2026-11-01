import 'package:konverter_suhu/konverter_suhu.dart' as konverter_suhu;
import 'dart:io';

/*
void main() {
  stdout.write('1. Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);
  var celcius = (fahrenheit - 32) * 5 / 9;
  print('$fahrenheit derajat Fahrenheit = $celcius derajat celcius');
}
*/

void main() {
  print('Alat Konversi Suhu');
  print('Pilih jenis suhu asal: ');
  print('1. Celcius');
  print('2. Fahrenheit');
  print('3. Reamur');
  print('4. Kelvin');

  stdout.write('Masukkan pilihan (1/2/3/4): ');
  var opsi = stdin.readLineSync();

  stdout.write('Masukkan nilai suhu: ');
  var suhu = num.parse(stdin.readLineSync()!);

  num celcius = 0, fahrenheit = 0, reamur = 0, kelvin = 0;

  switch (opsi) {
    // celcius
    case '1':
      celcius = suhu;
      fahrenheit = (celcius * 9 / 5) + 32;
      reamur = celcius * 4 / 5;
      kelvin = celcius + 273.15;
      break;

    // fahrenheit
    case '2':
      fahrenheit = suhu;
      celcius = (fahrenheit - 32) * 5 / 9;
      reamur = (fahrenheit - 32) * 4 / 9;
      kelvin = celcius + 273.15;
      break;

    // reamur
    case '3':
      reamur = suhu;
      celcius = reamur * 5 / 4;
      fahrenheit = (reamur * 9 / 4) + 32;
      kelvin = celcius + 273.15;
      break;

    // kelvin
    case '4':
      kelvin = suhu;
      celcius = kelvin - 273.15;
      fahrenheit = (celcius * 9 / 5) + 32;
      reamur = celcius * 4 / 5;
      break;

    default:
      print('Pilihan tidak valid. Run ulang programnya.');
      return;
  }
}