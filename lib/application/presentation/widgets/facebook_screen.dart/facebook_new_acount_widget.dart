import 'package:flutter/material.dart';

class FacebookNewAccountWidget extends StatelessWidget {
  const FacebookNewAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 17,
        child: Container(
          color: Colors.green,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Create New Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}