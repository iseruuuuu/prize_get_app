import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/color/app_color.dart';
import 'package:prize_get_app/component/game_app_bar_item.dart';
import 'package:prize_get_app/component/game_button.dart';
import 'package:prize_get_app/component/or_text.dart';
import 'package:prize_get_app/screen/game_screen/game_screen_controller.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  //TODO 1回無敵アイテムをつける　＝＞flutter pub add slider_button

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameScreenController(), tag: '');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.homeColor,
        elevation: 0,
        title: Obx(() => GameAppbarItem(text: controller.count.value)),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Obx(() => Text(
                '成功確率：${controller.randomPercent}%',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColor.homeColor,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GameButton(
                  text: '挑戦',
                  color: Colors.blue,
                  onTap: controller.onTapGet,
                ),
                const SizedBox(width: 20),
                const OrText(),
                const SizedBox(width: 20),
                GameButton(
                  text: '終了',
                  color: Colors.red,
                  onTap: controller.onTapFinish,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Text(
      //     '?',
      //     style: TextStyle(
      //       fontSize: 30,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.black,
      //     ),
      //  ),
      // ),
    );
  }
}
