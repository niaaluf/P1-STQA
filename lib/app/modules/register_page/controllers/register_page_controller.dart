import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// `RegisterPageController` adalah pengontrol (controller) yang bertanggung jawab
/// untuk mengelola logika halaman pendaftaran (register).
class RegisterPageController extends GetxController {

  // Kunci global untuk Form Widget dalam halaman pendaftaran.
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  // Instance Firebase Authentication untuk otentikasi pengguna.
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

     /// Metode untuk melakukan proses pendaftaran pengguna dengan email dan password.
  /// Jika proses pendaftaran berhasil, akan ditampilkan dialog sukses.
  /// Jika terjadi kesalahan, akan ditampilkan snackbar dengan pesan kesalahan yang sesuai.
    Future signUp(String email, String pass) async {
    try{
      // Melakukan proses pendaftaran dengan email dan password.
    await _firebaseAuth.signUp(email, pass);
    // Menampilkan dialog sukses jika pendaftaran berhasil.
    Get.defaultDialog(
      title: "Berhasil",
      middleText: "Akun berhasil diregister",
      onConfirm: () {
        Get.back();
        Get.back();
      },
      textConfirm: "okay",
    );
  }
  catch (e) {
    // Menangani kesalahan-kesalahan yang mungkin terjadi saat pendaftaran.

      // Kesalahan ketika format email tidak sesuai.
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Format email tidak sesuai",
          duration: Duration(seconds: 2),
        ));
        // Kesalahan ketika email sudah terdaftar.
      } else if (e.toString() == "AuthException: EMAIL_EXISTS") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Email sudah terdaftar",
          duration: Duration(seconds: 2),
        ));
        // Kesalahan ketika password terlalu lemah.
      } else if (e.toString() == "AuthException: WEAK_PASSWORD") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Password terlalu lemah",
          duration: Duration(seconds: 2),
        ));
         // Kesalahan lainnya.
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Unknow Error",
          duration: Duration(seconds: 2),
        ));
      }
    }
  }
  //TODO: Implement RegisterPageController

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
