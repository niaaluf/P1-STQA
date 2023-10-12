import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

// Buat pengontrol (controller) 'HasilLaporPageController' yang menggabungkan GetX
class HasilLaporPageController extends GetxController {
  /// Instance Firestore untuk berinteraksi dengan Firestore
  Firestore firestore = Firestore.instance;
  

  Future<Page<Document>> getReport() async {
    /// Referensi koleksi Firestore 'sampah'
    CollectionReference laporan = firestore.collection('sampah');

    /// Mendapatkan data dari koleksi
    return laporan.get();
  }
   /// Metode lainnya (getData) yang mendapatkan data laporan juga dapat digunakan sesuai kebutuhan aplikasi.
   Future<void> getData() async {
    final firestore = Firestore.instance;
    final laporan = firestore.collection('sampah');
    final snapshot = await laporan.get();
  }

  //TODO: Implement HasilLaporPageController

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
