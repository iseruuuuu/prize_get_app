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
}
