import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/screen/result/result_screen_controller.dart';

//TODO 結果によってアイコンを変えたい！！
//TODO 結果をシェアをする？？
//TODO

class ResultScreen extends StatelessWidget {
  final int count;

  const ResultScreen({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResultScreenController(), tag: '');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ゲーム結果',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const Spacer(),
            Text(
              'ポイント数：$count',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const Spacer(),
            Pulse(
              preferences: const AnimationPreferences(
                autoPlay: AnimationPlayStates.Loop,
              ),
              child: ElevatedButton(
                onPressed: controller.onTap,
                child: const Text(
                  'タイトルへ戻る',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.onTapPrize,
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.card_giftcard,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
