import 'package:get/get.dart';

/// Import pengontrol (controller) 'FormPageController'
import '../controllers/form_page_controller.dart';

/// Buat kelas 'FormPageBinding' yang mengimplementasikan 'Bindings'
class FormPageBinding extends Bindings {
  /// Implementasikan metode 'dependencies'
  @override
  void dependencies() {
    /// Menggunakan Get.lazyPut untuk menginisialisasi 'FormPageController'
    Get.lazyPut<FormPageController>(
      () => FormPageController(),
    );
  }
}
