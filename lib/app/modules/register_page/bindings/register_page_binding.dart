import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';

/// `RegisterPageBinding` adalah class yang bertanggung jawab untuk mengatur dependensi
/// (dependencies) yang diperlukan oleh halaman pendaftaran (register page).
class RegisterPageBinding extends Bindings {
  @override
  // Mendaftarkan pengontrol (controller) `RegisterPageController` dengan GetX
  void dependencies() {
    Get.lazyPut<RegisterPageController>(
      () => RegisterPageController(),
    );
  }
}
