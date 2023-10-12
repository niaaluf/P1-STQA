import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// Buat pengontrol (controller) 'FormPageController' yang menggabungkan GetX
class FormPageController extends GetxController {
  /// Kunci form untuk validasi
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    /// Referensi koleksi Firestore untuk 'sampah'
  CollectionReference menucollection = Firestore.instance.collection('sampah');
    /// Controller untuk input teks nama, deskripsi, dan lokasi
    late TextEditingController namaC, descC, lokasiC;

  /// Metode yang dipanggil saat pengontrol diinisialisasi
  @override
  void onInit() {
    super.onInit();
    namaC = TextEditingController();
    descC = TextEditingController();
    lokasiC = TextEditingController();
  }
    /// Metode validasi untuk input nama
    String? validateName(String value) {
    if (value.isEmpty) {
      return "nama harus di isi";
    }
    return null;
  }
  /// Metode validasi untuk input deskripsi
  String? validatedesc(String value) {
    if (value.isEmpty) {
      return "deskripsi harus di isi";
    }
    return null;
  }
    /// Metode validasi untuk input lokasi
    String? validatelokasi(String value) {
    if (value.isEmpty) {
      return "Lokasi harus di isi";
    }
    return null;
  }

  /// Metode untuk menyimpan data ke Firestore
  Future savedata(String nama, String desc, String lokasi) async {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      await menucollection.add({"nama": nama, "deskripsi sampah": desc, "Lokasi sampah":lokasi});
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "data telah ditambah",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "okay",
      );
    }

  }

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
