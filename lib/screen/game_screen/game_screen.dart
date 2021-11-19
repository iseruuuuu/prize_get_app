import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/screen/game_screen/game_screen_controller.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameScreenController(), tag: '');
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('さ'),
          ],
        ),
      ),
    );
  }
}
