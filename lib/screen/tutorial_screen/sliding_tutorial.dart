import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

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
        return Container(
          color: Colors.red,
        );
      case 1:
        return Container(
          color: Colors.blue,
        );
      case 2:
        return Container(
          color: Colors.yellow,
        );
      default:
        throw ArgumentError("Unknown position: $index");
    }
  }

  _onScroll() {
    widget.notifier.value = _pageController.page ?? 0;
  }
}
