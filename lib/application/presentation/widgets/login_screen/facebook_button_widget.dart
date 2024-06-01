import 'package:flutter/material.dart';

class FacebookButtonWidget extends StatelessWidget {
  const FacebookButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 58,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'facebook');
        },
        style: ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Colors.blue[900])),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook,
              color: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Continue with',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7),
              child: Text(
                'Facebook',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}