import 'package:flutter/material.dart';

import 'home_icon.dart';

class HomeAppbarItem extends StatelessWidget {
  const HomeAppbarItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  final int text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HomeIcon(),
        const SizedBox(width: 10),
        Text(
          '最長生存記録: $text日',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
