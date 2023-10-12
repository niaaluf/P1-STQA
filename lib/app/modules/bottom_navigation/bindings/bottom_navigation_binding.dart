/// Import library 'get'
import 'package:get/get.dart';

/// Impor pengontrol (controller) 'BottomNavigationController'
import '../controllers/bottom_navigation_controller.dart';

/// Buat kelas 'BottomNavigationBinding' yang mengimplementasikan 'Bindings'
class BottomNavigationBinding extends Bindings {
  @override
   /// Implementasikan metode 'dependencies'
  void dependencies() {
    /// Menggunakan Get.lazyPut untuk menginisialisasi 'BottomNavigationController'
    Get.lazyPut<BottomNavigationController>(
      () => BottomNavigationController(),
    );
  }
}
