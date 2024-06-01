import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageWidget extends StatelessWidget {
  const SmoothPageWidget({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: 3,
      effect: const ExpandingDotsEffect(
          activeDotColor: Colors.black, dotHeight: 4, dotWidth: 12),
    );
  }
}