import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// `LoginPageController` adalah pengontrol (controller) yang bertanggung jawab
/// untuk mengelola logika halaman login.
class LoginPageController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance; // Instance Firebase Authentication untuk otentikasi pengguna.
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(); // Kunci global untuk Form Widget dalam halaman login.

  /// Metode untuk melakukan proses otentikasi pengguna dengan email dan password.
  /// Jika proses login berhasil, pengguna akan dialihkan ke halaman utama (bottom navigation).
  /// Jika terjadi kesalahan, pesan kesalahan akan ditampilkan melalui snackbar.
  Future signIn(String email, String pass) async {
    try {
      // Melakukan proses login dengan email dan password.
      await _firebaseAuth.signIn(email, pass);
      // Mendapatkan informasi pengguna yang sudah login.
      await _firebaseAuth.getUser();
       // Mengalihkan pengguna ke halaman utama (bottom navigation).
      Get.offAllNamed(Routes.BOTTOM_NAVIGATION);
    } catch (e) {
      // Menangani kesalahan-kesalahan yang mungkin terjadi saat login.
      // Kesalahan ketika format email tidak sesuai.
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Login Error",
            message: "Format email tidak sesuai",
            duration: Duration(seconds: 2),
          ),
        );
         // Kesalahan ketika password salah.
      } else if (e.toString() == "AuthException: INVALID_PASSWORD") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Login Error",
            message: "Password salah",
            duration: Duration(seconds: 2),
          ),
        );
        // Kesalahan ketika email pengguna tidak ditemukan.
      } else if (e.toString() == "AuthException: EMAIL_NOT_FOUND") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Login Error",
            message: "User belum terdaftar",
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  //TODO: Implement LoginPageController

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
