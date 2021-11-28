import 'package:awesome_dialog/awesome_dialog.dart';
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

  void onTapGet() {
    if (count.value == 0) {
      _addPoint();
      randomPercent.value = random.nextInt(100);
    } else {
      _checkPoint();
    }
  }

  void onTapFinish() {
    _finishDialog();
  }

  void _checkPoint() {
    var value = randomPercent.value;
    print(value);
    if (value < 10) {
      _check0();
      print('0');
    } else if (value > 10 && value < 30) {
      _check10();
      print('10');
    } else if (value > 29 && value < 60) {
      _check30();
      print('30');
    } else if (value > 59 && value < 90) {
      _check60();
      print('60');
    } else {
      _addPoint();
      print('100');
    }
    randomPercent.value = random.nextInt(100);
  }

  _check0() {
    var n = random.nextInt(9);
    //TODO 確率は、10％にする。
    if (n == 0) {
      //成功
      _addPoint();
    } else {
      //失敗
      _gameOverDialog();
    }
  }

  _check10() {
    //TODO 確率は、30％にする。
    var n = random.nextInt(9);
    if (n >= 2) {
      //成功
      _addPoint();
    } else {
      //失敗
      _gameOverDialog();
    }
  }

  _check30() {
    //TODO 確率は、50％にする。
    var n = random.nextInt(9);
    if (n >= 4) {
      //成功
      _addPoint();
    } else {
      //失敗
      _gameOverDialog();
    }
  }

  _check60() {
    //TODO 確率は、80％にする。
    var n = random.nextInt(1);
    if (n >= 7) {
      //成功
      _addPoint();
    } else {
      //失敗
      _gameOverDialog();
    }
  }

  void _addPoint() {
    count++;
  }

  void _finishDialog() {
    AwesomeDialog(
      context: Get.context!,
      animType: AnimType.LEFTSLIDE,
      headerAnimationLoop: false,
      dialogType: DialogType.SUCCES,
      dismissOnBackKeyPress: false,
      title: 'ゲーム終了!',
      desc: '結果画面で得点をチェックしてみよう!!',
      btnOkText: '結果画面へ',
      btnOkOnPress: () {
        _checkHighScore();
        Get.off(() => ResultScreen(count: count.value));
      },
    ).show();
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
        count.value = 0;
        Get.off(() => ResultScreen(count: count.value));
      },
      btnOkText: '結果画面へ',
    ).show();
  }

  void _checkHighScore() async {
    highScore.value = await Preference().getInt(PreferenceKey.HighScore);
    if (count.value > highScore.value) {
      Preference().setInt(PreferenceKey.HighScore, count.value);
    }
  }
}
