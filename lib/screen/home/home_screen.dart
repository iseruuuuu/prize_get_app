import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/screen/home/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController(), tag: '');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('タイトル'),
            TextButton(
                onPressed: controller.onTap,
                child: const Text('スタート'),
            ),
          ],
        ),
      ),
    );
  }
}
