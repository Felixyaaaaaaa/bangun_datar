import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;
  final angka = "".obs;

  void hitungluas(){
    var hitung = panjang*lebar;
    hasil.value = "Hasil Perhitungan luas dari panjang $panjang dan lebar $lebar adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungkeliling(){
    var keliling = 2 * (panjang+lebar);
    hasil.value = "Hasil Perhitungan Keliling dari panjang $panjang dan lebar $lebar adalah $keliling";
    angka.value = "$keliling";
  }

}