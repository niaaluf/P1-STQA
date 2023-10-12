import 'package:get/get.dart';

/// Buat kelas 'BottomNavigationController' yang merupakan pengontrol (controller) GetX
class BottomNavigationController extends GetxController {
  /// Variabel 'selectedIndex' yang akan digunakan untuk mengatur indeks terpilih dalam bottom navigation
  var selectedIndex = 0.obs;

  /// Metode 'changeIndex' untuk mengubah indeks terpilih
  void changeIndex(int index){
    selectedIndex.value = index;
  }
 //TODO: Implement BottomNavigationController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
