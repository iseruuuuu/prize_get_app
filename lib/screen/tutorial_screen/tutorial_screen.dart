import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:prize_get_app/screen/tutorial_screen/sliding_tutorial.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({
    Key? key,
  }) : super(key: key);

  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  final ValueNotifier<double> notifier = ValueNotifier(0);
  int pageCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            SlidingTutorial(
              pageCount: pageCount,
              notifier: notifier,
            ),
            Align(
              alignment: const Alignment(0, 0.85),
              child: Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.94),
              child: SlidingIndicator(
                indicatorCount: pageCount,
                notifier: notifier,
                activeIndicator: const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                inActiveIndicator: const Text('あああ'),
                margin: 8,
                inactiveIndicatorSize: 14,
                activeIndicatorSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
