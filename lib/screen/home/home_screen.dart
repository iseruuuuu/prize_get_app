import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/color/app_color.dart';
import 'package:prize_get_app/component/home_app_bar_item.dart';
import 'package:prize_get_app/component/home_icon.dart';
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
          title: HomeAppbarItem(text: controller.highScore.value),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'タイトル未定',
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
                  height: MediaQuery.of(context).size.width / 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.homeColor,
                    ),
                    onPressed: controller.onTap,
                    child: const Text(
                      'スタート',
                      style: TextStyle(
                        fontSize: 25,
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