import 'package:commercejs_project/application/presentation/screens/facebook_screen.dart';
import 'package:commercejs_project/application/presentation/screens/home_screen.dart';
import 'package:commercejs_project/application/presentation/screens/landing_screen.dart';
import 'package:commercejs_project/application/presentation/screens/login_screen.dart';
import 'package:commercejs_project/application/presentation/screens/onboarding_screen.dart';
import 'package:commercejs_project/application/presentation/screens/product_screen.dart';
import 'package:commercejs_project/application/presentation/screens/signup_screen.dart';
import 'package:commercejs_project/application/presentation/screens/splash_screen.dart';
import 'package:commercejs_project/application/presentation/screens/successful_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/':(context) => const SplashScreen(),
        'onboarding':(context) => const OnboardingScreen(),
        'landing':(context) => const LandingScreen(),
        'login':(context) =>  const LoginScreen(),
        'home':(context) => const HomeScreen(),
        'signup':(context) => const SignupScreen(),
        'successful':(context) => const SuccessfulScreen(),
        'product':(context) =>  const ProductScreen(),
        'facebook':(context) => const FacebookScreen(),
      },
    );
  }
}