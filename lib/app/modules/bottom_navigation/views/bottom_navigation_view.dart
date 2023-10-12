import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:final_project_2023/app/modules/lapor_page/views/lapor_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

/// Buat kelas 'BottomNavigationView' yang merupakan tampilan (view) GetX
class BottomNavigationView extends GetView<BottomNavigationController> {
  /// Buat kelas 'BottomNavigationView' yang merupakan tampilan (view) GetX
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  // Konstruktor 'BottomNavigationView'
  BottomNavigationView({Key? key}) : super(key: key);

  // Daftar tampilan yang akan ditampilkan dalam bottom navigation
  final screens = [
    const HomeView(),
    const LaporPageView(),
  ];

  // Metode untuk membangun tampilan
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color(0xFF9354B9),
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.report),
                label: "Lapor",
                backgroundColor: Color.fromARGB(255, 20, 162, 101),
              ),
            ],
          )),
    );
  }
}
