import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:prize_get_app/screen/result/result_screen.dart';

class GameScreenController extends GetxController {
  var count = 0.obs;
  var randomPercent = 0.obs;
  var random =  math.Random();

  @override
  void onInit() {
    randomPercent.value = 100;
  }

  void onTapFinish() {
    Get.off(() => ResultScreen(count: count.value));
  }

  void onTapGet() {
    //TODO 乱数を出す。(%)
    print(random.nextInt(100));
    randomPercent.value = random.nextInt(100);

  }
}
