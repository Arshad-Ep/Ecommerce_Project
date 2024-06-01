import 'package:flutter/material.dart';

class NewArrivalsWidget extends StatelessWidget {
  const NewArrivalsWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New Arrivals",
                style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 208, 208, 208)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'product');
                },
                child: const Text(
                  "View All",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                                'assets/images/newarrival2.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 123, top: 9),
                            child: Image.asset(
                                'assets/images/icons/love.png'),
                          )
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "Axel Arigato",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Clean 90 Triple Sneakers",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "₹245.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10),
                            child: Image.asset(
                                'assets/images/newarrival1.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 120, top: 10),
                            child: Image.asset(
                                'assets/images/icons/love.png'),
                          )
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "The Marc Jacobs",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Traveler Tote",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "₹195.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}