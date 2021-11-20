import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/preference/shared_preference.dart';
import 'dart:math' as math;
import 'package:prize_get_app/screen/result/result_screen.dart';

class GameScreenController extends GetxController {
  var count = 0.obs;
  var randomPercent = 0.obs;
  var random = math.Random();
  var highScore = 0.obs;

  @override
  void onInit() {
    super.onInit();
    randomPercent.value = 100;
  }

  void onTapFinish() {
    //Get.off(() => ResultScreen(count: count.value));
    _gameOverDialog();
  }

  void onTapGet() {
    _checkPoint();
  }

  void _checkPoint() {
    //TODO 乱数を出す。(%)
    randomPercent.value = random.nextInt(100);
    var value = randomPercent.value;

    print(value);

    var randomNumber = random.nextInt(10);

    //成功なら
    _addPoint();
    //失敗なら
    // _gameOver();

    _checkHighScore();
  }

  void _addPoint() {
    count++;
  }

  void _gameOver() {
    Get.off(() => ResultScreen(count: count.value));
  }

  void _gameOverDialog() {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.ERROR,
      animType: AnimType.RIGHSLIDE,
      headerAnimationLoop: true,
      title: '失敗!!',
      desc: '結果画面で得点をチェックしてみよう!!',
      dismissOnBackKeyPress: false,
      btnOkOnPress: () {
        //TODO 結果画面に飛ぶ
        Get.off(() => ResultScreen(count: count.value));
      },
      btnOkText: '結果画面へ',
    ).show();
  }

  void _checkHighScore() async {
    highScore.value = await Preference().getInt(PreferenceKey.HighScore);
    if (count.value > highScore.value) {
      Preference().setInt(PreferenceKey.HighScore, count.value);
    } else {}
  }
}
