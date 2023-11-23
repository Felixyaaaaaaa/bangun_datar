import 'package:get/get.dart';

class SegitigaController extends GetxController{
  var sisi1;
  var sisi2;
  var sisi3;
  final hasil = "".obs;
  final angka = "".obs;

  void hitungluas(){
    var hitung = 0.5 * sisi1 * sisi2;
    hasil.value = "Hasil Perhitungan luas dari 1/2 x $sisi1 x $sisi2 adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungkeliling(){
    var keliling = sisi1 + sisi2 + sisi3;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi1 + $sisi2 + $sisi3 adalah $keliling";
    angka.value = "$keliling";
  }

}