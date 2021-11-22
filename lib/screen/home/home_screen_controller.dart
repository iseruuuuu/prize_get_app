import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/preference/shared_preference.dart';
import 'package:prize_get_app/screen/game_screen/game_screen.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';

class HomeScreenController extends GetxController {
  var highScore = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _sharedPreference();
  }

  void _sharedPreference() async {
    highScore.value = await Preference().getInt(PreferenceKey.HighScore);
  }

  void onTap() {
    // double _progress = 0;
    // Timer? _timer;
    // _timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
    //   EasyLoading.showProgress(_progress,
    //       status: '${(_progress * 100).toStringAsFixed(0)}%');
    //   _progress += 0.03;
    //   if (_progress >= 1) {
    //     _timer?.cancel();
    //     EasyLoading.dismiss();
    //     Get.to(() => const GameScreen());
    //   }
    // });
    Get.to(() => const GameScreen());
  }
}
