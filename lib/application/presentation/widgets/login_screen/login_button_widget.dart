import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 55,
        child: OutlinedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.pushNamed(context, 'home');
            }
          },
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}