import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        _buildCarouselItem(
          'assets/images/banners/slideshow1.jpg',
          '40% Off',
          'everything today',
          context,
        ),
        _buildCarouselItem(
          'assets/images/banners/slideshow2.jpg',
          '40% Off',
          'on every gadgets',
          context,
        ),
        _buildCarouselItem(
          'assets/images/banners/slideshow3.jpg',
          '30% Off',
          'on this week',
          context,
        ),
        _buildCarouselItem(
          'assets/images/banners/slideshow4.jpg',
          '50% Off',
          'on every shirts',
          context,
        ),
        _buildCarouselItem(
          'assets/images/banners/slideshow5.jpg',
          '50% Off',
          'on every shoes',
          context,
        ),
      ],
      options: CarouselOptions(
        height: screenWidth * 0.5, // Adjust the height based on screen width
        aspectRatio: 16 / 8,
        viewportFraction: 0.7,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
      ),
    );
  }

  Widget _buildCarouselItem(
    String imagePath,
    String discount,
    String description,
    BuildContext context,
  ) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Positioned(
          left: 20,
          top: 30,
          child: Text(
            discount,
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 73,
          child: Text(
            description,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: 27,
          child: OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'product');
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              foregroundColor: MaterialStateProperty.all(Colors.black),
            ),
            child: const Text(
              "Get Now",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
