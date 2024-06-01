import 'package:commercejs_project/application/presentation/widgets/onboarding_screen/data/onboard_data.dart';
import 'package:commercejs_project/application/presentation/widgets/onboarding_screen/elevated_button_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/onboarding_screen/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardingContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  title2: demo_data[index].title2,
                  description: demo_data[index].description,
                  pageController: _pageController,
                ),
              ),
            ),
            ElevatedButtonWidget(pageController: _pageController)
          ],
        ),
      ),
    );
  }
}
