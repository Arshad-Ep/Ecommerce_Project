import 'package:commercejs_project/application/presentation/widgets/onboarding_screen/data/onboard_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final padding = screenSize.width * 0.05;
    final buttonSize = screenSize.width * 0.15;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.only(left: padding, bottom: padding),
          child: SizedBox(
            height: buttonSize,
            width: buttonSize,
            child: ElevatedButton(
              onPressed: () {
                if (_pageController.page == demo_data.length - 1) {
                  Navigator.pushNamed(context, 'landing');
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 66, 66, 66),
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: SvgPicture.asset(
                'assets/images/icons/right-arrow-svgrepo-com.svg',
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
