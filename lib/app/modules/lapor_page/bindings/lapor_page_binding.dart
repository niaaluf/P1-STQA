import 'package:get/get.dart';

import '../controllers/lapor_page_controller.dart';

/// Buat pengikatan (binding) 'LaporPageBinding'
class LaporPageBinding extends Bindings {
  @override
  void dependencies() {
    /// Menghubungkan 'LaporPageController' dengan GetX
    Get.lazyPut<LaporPageController>(
      () => LaporPageController(),
    );
  }
}
