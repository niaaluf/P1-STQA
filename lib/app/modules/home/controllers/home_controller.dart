import 'package:get/get.dart';

/// Buat pengontrol (controller) 'HomeController' yang menggabungkan GetX
class HomeController extends GetxController {
  //TODO: Implement HomeController

  /// Variabel observabel 'count' untuk mengamati perubahan nilai
  final count = 0.obs;
  /// Metode 'onInit' dipanggil saat pengontrol diinisialisasi
  @override
  void onInit() {
    super.onInit();
  }
  /// Metode 'onReady' dipanggil setelah pengontrol selesai diinisialisasi
  @override
  void onReady() {
    super.onReady();
  }
  /// Metode 'onClose' dipanggil saat pengontrol dihapus
  @override
  void onClose() {
    super.onClose();
  }
  /// Metode 'increment' untuk menambahkan nilai 'count' dengan 1
  void increment() => count.value++;
}
