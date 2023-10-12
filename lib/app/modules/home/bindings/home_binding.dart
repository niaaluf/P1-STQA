import 'package:get/get.dart';

/// Import pengontrol (controller) 'HomeController'
import '../controllers/home_controller.dart';

/// Buat kelas 'HomeBinding' yang mengimplementasikan 'Bindings'
class HomeBinding extends Bindings {
  /// Implementasikan metode 'dependencies'
  @override
  void dependencies() {
    /// Menggunakan Get.lazyPut untuk menginisialisasi 'HomeController'
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
