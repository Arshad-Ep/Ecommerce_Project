import 'package:flutter/material.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.4, 
                child: Image.asset(
                  'assets/images/icons/check.png',
                  height: screenHeight * 0.2,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Successful!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                "You have successfully registered in",
                textAlign: TextAlign.center,
              ),
              const Text("our app and start working on it."),
              const SizedBox(height: 40),
              SizedBox(
                width: screenWidth * 0.8, // Adjust as needed
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                  ),
                  child: const Text(
                    "Start Shopping",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
