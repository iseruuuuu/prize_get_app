import 'package:get/get.dart';
import 'package:prize_get_app/preference/shared_preference.dart';

class CrownScreenController extends GetxController {
  var highScore = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _sharedPreference();
  }

  void _sharedPreference() async {
    highScore.value = await Preference().getInt(PreferenceKey.HighScore);
  }

  void onTapExchange1() {
    if (highScore.value == 3) {
    } else {
      //何もなし
    }
  }

  void onTapExchange2() {
    if (highScore.value == 5) {
    } else {
      //何もなし
    }
  }

  void onTapExchange3() {
    if (highScore.value == 10) {
    } else {
      //何もなし
    }
  }

  void _notGetIcon() {
    //TODO ダイアログを出す。
  }
}
