import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_icon/flutter_dynamic_icon.dart';
import 'package:get/get.dart';
import 'package:prize_get_app/preference/shared_preference.dart';

class CrownScreenController extends GetxController {
  var highScore = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int batchIconNumber = 0;

  @override
  void onInit() {
    super.onInit();
    _sharedPreference();

    FlutterDynamicIcon.getApplicationIconBadgeNumber().then((v) {
      batchIconNumber = v;
    });
  }

  void _sharedPreference() async {
    highScore.value = await Preference().getInt(PreferenceKey.HighScore);
  }

  void onTap(){}

//   void onTapExchange1() {
//     // if (highScore.value == 3) {
//     _changeIcon(imageName: "icon_bronze");
//     // } else {
//     //   //何もなし
//     // }
//   }
//
//   void onTapExchange2() {
//     _changeIcon(imageName: "icon_silver");
//     if (highScore.value == 5) {
//     } else {
//       //何もなし
//     }
//   }
//
//   void onTapExchange3() {
//     _changeIcon(imageName: "icon_gold");
//     if (highScore.value == 10) {
//     } else {
//       //何もなし
//     }
//   }
//
//   void _notGetIcon() {
//     //TODO ダイアログを出す。
//   }
//
//   void _changeIcon({required String imageName}) async {
//     String currentIconName = "?";
//     try {
//       if (await FlutterDynamicIcon.supportsAlternateIcons) {
//         if (imageName == "icon_bronze") {
//           print(imageName);
//           await FlutterDynamicIcon.setAlternateIconName("photos");
//         } else if (imageName == "icon_silver") {
//           print(imageName);
//           await FlutterDynamicIcon.setAlternateIconName("chills");
//         } else if (imageName == "icon_gold") {
//           print(imageName);
//           await FlutterDynamicIcon.setAlternateIconName(null);
//         }
//
//         _scaffoldKey.currentState?.hideCurrentSnackBar();
//         _scaffoldKey.currentState?.showSnackBar(
//           const SnackBar(
//             content: Text(
//               "App icon change successful",
//             ),
//           ),
//         );
//         FlutterDynamicIcon.getAlternateIconName().then((v) {
//           currentIconName = v ?? "`primary`";
//         });
//         return;
//       }
//     } catch (e) {}
//     _scaffoldKey.currentState?.hideCurrentSnackBar();
//     _scaffoldKey.currentState?.showSnackBar(
//       const SnackBar(
//         content: Text("Failed to change app icon"),
//       ),
//     );
//   }
}
