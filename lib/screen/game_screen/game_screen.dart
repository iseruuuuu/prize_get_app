import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/screen/game_screen/game_screen_controller.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameScreenController(), tag: '');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '現在のxxxポイント',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              '成功確率：xxx %',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: controller.onTapGet,
                  child: const Text('Get'),
                ),
                const Text('or'),
                TextButton(
                  onPressed: controller.onTapFinish,
                  child: const Text('Finish'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
