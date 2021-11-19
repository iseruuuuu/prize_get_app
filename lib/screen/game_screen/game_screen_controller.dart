import 'package:get/get.dart';
import 'package:prize_get_app/screen/result/result_screen.dart';

class GameScreenController extends GetxController {
  var count = 0.obs;
  var random = 0.obs;

  void onTapFinish() {
    Get.off(() => ResultScreen(count: count.value));
  }

  void onTapGet() {
    //TODO 乱数を出す。
  }
}
