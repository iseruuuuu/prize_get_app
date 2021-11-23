import 'package:flutter/material.dart';
import 'package:prize_get_app/gen/assets.gen.dart';

class CrownButton extends StatelessWidget {
  final String point;
  final String image;
  final String buttonText;
  final Function() onTap;

  const CrownButton({
    Key? key,
    required this.point,
    required this.image,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          point,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(image),
            ),
            TextButton(
              onPressed: onTap,
              child: Text(buttonText),
            )
          ],
        ),
      ],
    );
  }
}
