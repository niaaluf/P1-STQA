import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';
/// LoginPageBinding adalah class yang menghubungkan controller dan view untuk halaman login.
class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    // Mendaftarkan controller 'LoginPageController' ke GetX untuk penggunaan di view.
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    );
  }
}
