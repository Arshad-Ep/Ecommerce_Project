import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: OutlinedButton(
            style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 108, 108, 108))),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Bootstrap.google),
                ),
                Text(
                  'Continue with',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    'Google',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            )),
      ),
    ),
    SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: OutlinedButton(
            style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(
                    Color.fromARGB(255, 108, 108, 108))),
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.apple),
                ),
                Text(
                  'Continue with',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    'Apple',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            )),
      ),
    ),
      ],
    );
  }
}