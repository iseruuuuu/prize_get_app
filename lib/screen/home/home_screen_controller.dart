import 'package:get/get.dart';
import 'package:prize_get_app/screen/game_screen/game_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:open_settings/open_settings.dart';

class HomeScreenController extends GetxController {

  void onTap() {
    Get.to(() => const GameScreen());
  }

}