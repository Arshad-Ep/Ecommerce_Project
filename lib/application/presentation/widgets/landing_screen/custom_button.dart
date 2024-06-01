import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonFontSize = screenWidth * 0.045;

    return SizedBox(
      width: double.infinity,
      height: 62,
      child: OutlinedButton(
        style: ButtonStyle(
          shadowColor: WidgetStateProperty.all(Colors.white),
          overlayColor: WidgetStateProperty.all(Colors.white),
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          foregroundColor: WidgetStateProperty.all(foregroundColor),
          side: WidgetStateProperty.all(
            BorderSide(
              color: backgroundColor != Colors.white ? Colors.white : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: buttonFontSize, color: textColor),
        ),
      ),
    );
  }
}
