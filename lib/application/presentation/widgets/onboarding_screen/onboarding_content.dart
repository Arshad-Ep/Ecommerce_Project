import 'package:commercejs_project/application/presentation/widgets/onboarding_screen/smooth_page_widget.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.title2,
    required this.description,
    required this.pageController,
  });

  final String image, title, title2, description;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageHeight = constraints.maxHeight * 0.6;
        double padding = constraints.maxWidth * 0.05;
        double titleFontSize = constraints.maxWidth * 0.09;
        double title2FontSize = constraints.maxWidth * 0.08;
        double descriptionFontSize = constraints.maxWidth * 0.04;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              SmoothPageWidget(pageController: pageController),
              const SizedBox(height: 20),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: titleFontSize,
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: title2FontSize,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: descriptionFontSize,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
