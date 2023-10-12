import 'dart:ui';

import 'package:final_project_2023/app/data/data.dart';
import 'package:final_project_2023/app/data/warna.dart';
import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:final_project_2023/app/data/data.dart';

import 'package:get/get.dart';

import '../controllers/lapor_page_controller.dart';

/// Buat kelas 'LaporPageView' yang mengimplementasikan 'GetView' dengan controller 'LaporPageController'
class LaporPageView extends GetView<LaporPageController> {
  /// Konstruktor 'LaporPageView' dengan kunci opsional
  const LaporPageView({Key? key}) : super(key: key);

  /// Metode 'build' untuk membangun tampilan halaman laporan
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Tampilan latar belakang
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              AppAssets.background, // Gambar latar belakang
              fit: BoxFit.contain,
            ).image,
          ),
        ),
        child: Container(
          /// Lapisan latar depan dengan efek blur
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 0),
                blurRadius: 15,
                spreadRadius: 15,
              )
            ],
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
              tileMode: TileMode.decal,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                _bodyWidget(), /// Widget untuk konten utama
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Metode untuk membuat konten utama
  Widget _bodyWidget() {
    return Container(
      child: Stack(
        children: [
          Positioned(child: _forgroundImageWidget()), // Gambar latar depan
          _textContainer() // Kontainer teks
        ],
      ),
    );
  }

  /// Metode untuk menampilkan gambar latar depan
  Widget _forgroundImageWidget() {
    return Image.asset(
      AppAssets.forground, // Gambar latar depan
      fit: BoxFit.contain,
    );
  }

  /// Metode untuk menampilkan kontainer teks
  Widget _textContainer() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 40,
      ).copyWith(top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(text: "Ayo"),
                TextSpan(
                  text: " Laporkan\nTumpukan Sampah",
                  style: TextStyle(color: AppColors.primary),
                ),
                TextSpan(text: " Di"),
                TextSpan(
                  text: "Kota",
                  style: TextStyle(color: AppColors.primary),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.FORM_PAGE); // Rute ke halaman pengisian laporan
                      },
                      child: Text(
                        "LAPOR SAMPAH",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.HASIL_LAPOR_PAGE); // Rute ke halaman melihat laporan
                        },
                        child: Text(
                          "LIHAT LAPORAN",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
