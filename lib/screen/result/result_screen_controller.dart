import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/screen/crown_screen/crown_screen.dart';

class ResultScreenController extends GetxController {
  void onTap() {
    Get.back();
    Get.back();
  }

  void onTapPrize() {
    //Get.to(() => CrownScreen());
    Get.bottomSheet(
      CrownScreen(),
      // persistent: true,
      isScrollControlled: true,
      ignoreSafeArea: false,
      // isDismissible: true,
      // elevation: 0,
    );
  }
}
