import 'package:shopping_list/Cay.dart';
import 'package:shopping_list/Kahve.dart';
import 'package:shopping_list/Sut.dart';
import 'package:shopping_list/Urun.dart';
import 'package:shopping_list/deterjan.dart';

void main() {
  Deterjan deterjan = Deterjan();
  Cay cay = Cay();
  Sut sut = Sut();
  Kahve kahve = Kahve();

  double toplamFiyat = 0.0;

  toplamFiyat = deterjan.fiyat() + cay.fiyat() + sut.fiyat() + kahve.fiyat();
  print("Ürünler toplamı " + toplamFiyat.toString());

  //List ve for ile toplam alışveirş fiyatı hesaplama

  List<Urun> urunler = [deterjan, kahve, cay, sut];
  double toplaFiyat = 0.0;
  for (int i = 0; i < urunler.length - 1; i++) {
    toplaFiyat += urunler[i].fiyat();
  }
  print("urunlerin toplam fiyatı: " + toplaFiyat.toString());
}
