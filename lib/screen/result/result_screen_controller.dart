import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/preference/shared_preference.dart';
import 'package:prize_get_app/screen/crown_screen/crown_screen.dart';
import 'package:prize_get_app/screen/game_screen/game_screen_controller.dart';

class ResultScreenController extends GetxController {
  final highScore = 0.obs;
  final isHighScore = false.obs;
  final gameController = Get.put(GameScreenController());

  @override
  void onInit() {
    super.onInit();

    _sharedPreference();
    _checkScore();
  }

  void _sharedPreference() async {
    highScore.value = await Preference().getInt(PreferenceKey.HighScore);
  }

  void _checkScore() {
    //TODO　ハイスコアかどうかの判定がまだできていない。。。
  }

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
