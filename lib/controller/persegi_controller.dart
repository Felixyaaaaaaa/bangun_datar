import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi= 0;
  final hasil = "".obs;
  final angka = "".obs;

  void hitungluas(){
    var hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan luas dari sisi $sisi adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungkeliling(){
    var keliling = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling 4 x $sisi adalah $keliling";
    angka.value = "$keliling";
  }

}