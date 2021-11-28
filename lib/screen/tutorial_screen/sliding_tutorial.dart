import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:prize_get_app/screen/tutorial_screen/children/tutorial_1_screen.dart';

import 'children/tutorial_2_screen.dart';
import 'children/tutorial_3_screen.dart';

class SlidingTutorial extends StatefulWidget {
  final ValueNotifier<double> notifier;
  final int pageCount;

  const SlidingTutorial({
    required this.notifier,
    required this.pageCount,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SlidingTutorial();
}

class _SlidingTutorial extends State<SlidingTutorial> {
  final _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    _pageController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBackgroundColor(
      pageController: _pageController,
      pageCount: widget.pageCount,
      child: PageView(
        controller: _pageController,
        children: List<Widget>.generate(
          widget.pageCount,
          (index) => _getPageByIndex(index),
        ),
      ),
    );
  }

  Widget _getPageByIndex(int index) {
    switch (index % 3) {
      case 0:
        //1枚目
        return const Tutorial1Screen();
      case 1:
        //2枚目
        return const Tutorial2Screen();
      case 2:
        //3枚目
        return const Tutorial3Screen();
      default:
        throw ArgumentError("Unknown position: $index");
    }
  }

  _onScroll() {
    widget.notifier.value = _pageController.page ?? 0;
  }
}
