import 'package:commercejs_project/application/presentation/widgets/landing_screen/background_image.dart';
import 'package:commercejs_project/application/presentation/widgets/landing_screen/custom_button.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    text: "Login",
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    textColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    textColor: Colors.white,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
