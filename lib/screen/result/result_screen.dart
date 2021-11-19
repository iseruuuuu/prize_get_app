import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/screen/result/result_screen_controller.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('結果画面'),
            Text('ポイント数：$count'),
            TextButton(
              onPressed: controller.onTap,
              child: const Text('タイトルへ戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
