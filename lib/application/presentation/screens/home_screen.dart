import 'package:commercejs_project/application/presentation/widgets/home_screen/carousel_slider_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/home_screen/deals_for_you_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/home_screen/new_arrivals_widget.dart';
import 'package:commercejs_project/application/presentation/widgets/home_screen/searchbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/icons/menu.png',
                      width: screenWidth * 0.15,
                    ),
                    CircleAvatar(
                      radius: screenWidth * 0.05,
                      child: Image.asset('assets/images/icons/profileIcon.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          fontSize: screenWidth * 0.08,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "our Fashion App",
                      style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SearchBarWidget(),
              SizedBox(height: screenWidth * 0.05),
              CarouselSliderWidget(screenWidth: screenWidth),
              SizedBox(height: screenWidth * 0.05),
              DealsForYouWidget(screenWidth: screenWidth),
              SizedBox(height: screenWidth * 0.03),
              const SizedBox(height: 20),

              NewArrivalsWidget(screenWidth: screenWidth),

              const SizedBox(height: 10),

            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: screenWidth * 0.13,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.black,
        color: const Color.fromARGB(255, 108, 108, 108),
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, size: 20, color: Colors.white),
          Icon(Icons.shopping_cart, size: 20, color: Colors.white),
          Icon(Icons.notifications, size: 20, color: Colors.white),
          Icon(Icons.person, size: 20, color: Colors.white),
        ],
      ),
    );
  }
}


