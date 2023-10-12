import 'package:get/get.dart';

/// Import pengontrol (controller) 'HasilLaporPageController'
import '../controllers/hasil_lapor_page_controller.dart';

/// Buat kelas 'HasilLaporPageBinding' yang mengimplementasikan 'Bindings'
class HasilLaporPageBinding extends Bindings {
  ///Implementasikan metode 'dependencies'
  @override
  void dependencies() {
    /// Menggunakan Get.lazyPut untuk menginisialisasi 'HasilLaporPageController'
    Get.lazyPut<HasilLaporPageController>(
      () => HasilLaporPageController(),
    );
  }
}
