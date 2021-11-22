import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'crown_scrren_controller.dart';

class CrownScreen extends StatelessWidget {
  const CrownScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CrownScreenController(), tag: '');
    return SafeArea(
      bottom: false,
      minimum: const EdgeInsets.only(top: 90),
      child: Scaffold(
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
                'ボーナスコンテンツ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
