import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/color/app_color.dart';
import 'package:prize_get_app/screen/home/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO タグの変更が必要
    final controller = Get.put(HomeScreenController(), tag: '');
    return FlutterEasyLoading(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColor.homeColor,
          elevation: 0,
          title: Row(
            children: [
              Text('最長生存記録：${controller.highScore}日'),
              const Spacer(),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                '一か八か',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: AppColor.homeColor,
                ),
              ),
              Pulse(
                preferences: const AnimationPreferences(autoPlay: AnimationPlayStates.Loop),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.homeColor,
                    ),
                    onPressed: controller.onTap,
                    child: const Text(
                      'スタート',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
