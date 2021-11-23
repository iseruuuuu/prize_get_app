import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/component/crown_button.dart';
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
        backgroundColor: Colors.grey.shade50,
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
              const Text('クリア数に応じてアイコンをアップグレードできます。'),
              const Spacer(),
              CrownButton(
                image: 'assets/images/icon_bronze.png',
                point: '03ポイント',
                onTap: controller.onTapExchange3,
                buttonText: '交換する',
              ),
              CrownButton(
                image: 'assets/images/icon_silver.png',
                point: '05ポイント',
                onTap: controller.onTapExchange2,
                buttonText: '交換する',
              ),
              CrownButton(
                image: 'assets/images/icon_gold.png',
                point: '10ポイント',
                onTap: controller.onTapExchange3,
                buttonText: '交換する',
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
