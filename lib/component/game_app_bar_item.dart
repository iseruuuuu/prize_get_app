import 'package:flutter/material.dart';
import 'home_icon.dart';

class GameAppbarItem extends StatelessWidget {
  const GameAppbarItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final int text;

  @override
  Widget build(BuildContext context) {
    return Text(
      '生存 $text日目',
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
