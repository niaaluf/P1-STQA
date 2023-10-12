import 'package:get/get.dart';

// Buat pengontrol (controller) 'LaporPageController' yang menggabungkan GetX
class LaporPageController extends GetxController {
  //TODO: Implement LaporPageController

  // Variabel observabel 'count' untuk mengamati perubahan nilai
  final count = 0.obs;

  // Metode 'onInit' dipanggil saat pengontrol diinisialisasi
  @override
  void onInit() {
    super.onInit();
  }

  // Metode 'onReady' dipanggil setelah pengontrol selesai diinisialisasi
  @override
  void onReady() {
    super.onReady();
  }

  // Metode 'onClose' dipanggil saat pengontrol dihapus
  @override
  void onClose() {
    super.onClose();
  }
  /// Metode 'increment' untuk menambah nilai 'count' dengan 1
  void increment() => count.value++;
}
